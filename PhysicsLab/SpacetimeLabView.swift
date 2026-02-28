//
//  SpacetimeLabView.swift
//  Aether
//
//  Created by VED PATEL on 10/02/26.
//


import SwiftUI

// MARK: - Celestial Body Model

struct CelestialBody: Identifiable {
    let id: UUID = UUID()
    var position: CGPoint
    var bodyType: BodyType
    var velocity: CGPoint = .zero

    enum BodyType: String, CaseIterable, Identifiable {
        case planet      = "Planet"
        case star        = "Star"
        case blackHole   = "Black Hole"
        case neutronStar = "Neutron Star"

        var id: String { rawValue }

        var mass: CGFloat {
            switch self {
            case .planet:      return 1.0
            case .star:        return 4.0
            case .neutronStar: return 8.0
            case .blackHole:   return 18.0
            }
        }

        var radius: CGFloat {
            switch self {
            case .planet:      return 16
            case .star:        return 22
            case .neutronStar: return 14
            case .blackHole:   return 20
            }
        }

        var color: Color {
            switch self {
            case .planet:      return Color(red: 0.2, green: 0.6, blue: 1.0)
            case .star:        return Color(red: 1.0, green: 0.9, blue: 0.3)
            case .neutronStar: return Color(red: 0.3, green: 1.0, blue: 0.7)
            case .blackHole:   return Color(red: 0.7, green: 0.2, blue: 1.0)
            }
        }

        var emoji: String {
            switch self {
            case .planet:      return "🪐"
            case .star:        return "⭐"
            case .neutronStar: return "💫"
            case .blackHole:   return "⚫"
            }
        }

        var gridWarpDepth: CGFloat { mass * 18.0 }
        var accessibilityLabel: String { "\(rawValue) with mass \(Int(mass)) units" }
    }
}

// MARK: - Spacetime Lab View

struct SpacetimeLabView: View {
    let ageGroup: AgeGroup

    @State private var bodies: [CelestialBody] = []
    @State private var draggingBodyType: CelestialBody.BodyType? = nil
    @State private var dragLocation: CGPoint = .zero
    @State private var magnification: CGFloat = 1.0
    @State private var baseMagnification: CGFloat = 1.0
    @State private var gridWarpExtra: CGFloat = 0.0
    @State private var showParticles: Bool = true
    @State private var simulationRunning: Bool = true

    private let gridCols = 20
    private let gridRows = 14

    var body: some View {
        GeometryReader { geo in
            let size = geo.size
            ZStack {
                Color(red: 0.01, green: 0.01, blue: 0.06).ignoresSafeArea()
                StarFieldCanvas().opacity(0.5).ignoresSafeArea()

                // Grid
                TimelineView(.animation(minimumInterval: 1.0 / 60.0)) { ctx in
                    let t = CGFloat(ctx.date.timeIntervalSinceReferenceDate)
                    SpacetimeGridCanvas(
                        bodies: bodies, size: size,
                        gridCols: gridCols, gridRows: gridRows,
                        magnification: magnification,
                        gridWarpExtra: gridWarpExtra, time: t
                    )
                }
                .ignoresSafeArea()

                // Particles
                if showParticles {
                    TimelineView(.animation(minimumInterval: 1.0 / 60.0)) { ctx in
                        let t = CGFloat(ctx.date.timeIntervalSinceReferenceDate)
                        LabParticleCanvas(bodies: bodies, size: size, time: t)
                    }
                    .ignoresSafeArea()
                    .allowsHitTesting(false)
                }

                // Bodies
                ForEach(bodies) { item in
                    CelestialBodyView(item: item)
                        .position(item.position)
                        .accessibilityLabel(item.bodyType.accessibilityLabel)
                        .accessibilityAddTraits(.isButton)
                        .gesture(
                            DragGesture().onChanged { val in
                                if let idx = bodies.firstIndex(where: { $0.id == item.id }) {
                                    bodies[idx].position = val.location
                                }
                            }
                        )
                }

                // Drop ghost
                if let dragType = draggingBodyType {
                    CelestialBodyView(item: CelestialBody(position: dragLocation, bodyType: dragType))
                        .position(dragLocation)
                        .opacity(0.7)
                        .allowsHitTesting(false)
                }

                // HUD
                LabHUDView(bodies: bodies, ageGroup: ageGroup,
                           simulationRunning: $simulationRunning,
                           showParticles: $showParticles)

                // Toolbar
                VStack {
                    Spacer()
                    LabToolbarView(
                        draggingBodyType: $draggingBodyType,
                        dragLocation: $dragLocation,
                        onDrop: { bType, location in
                            withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                                bodies.append(CelestialBody(position: location, bodyType: bType))
                            }
                        },
                        onClear: {
                            withAnimation(.spring(response: 0.4)) { bodies.removeAll() }
                        },
                        canvasSize: size
                    )
                }
                .ignoresSafeArea(edges: .bottom)
            }
            .gesture(
                MagnifyGesture()
                    .onChanged { val in
                        magnification = min(max(baseMagnification * val.magnification, 0.4), 2.8)
                        gridWarpExtra = (magnification - 1.0) * 30.0
                    }
                    .onEnded { _ in
                        baseMagnification = magnification
                        withAnimation(.spring(response: 0.8)) { gridWarpExtra = 0 }
                    }
            )
        }
        .navigationBarHidden(true)
    }
}

// MARK: - Spacetime Grid Canvas

struct SpacetimeGridCanvas: View {
    let bodies: [CelestialBody]
    let size: CGSize
    let gridCols: Int
    let gridRows: Int
    let magnification: CGFloat
    let gridWarpExtra: CGFloat
    let time: CGFloat

    var body: some View {
        Canvas { context, sz in
            let cellW = sz.width  / CGFloat(gridCols)
            let cellH = sz.height / CGFloat(gridRows)

            // Horizontal lines
            for row in 0...gridRows {
                var path = Path()
                var first = true
                for col in 0...(gridCols * 4) {
                    let rawX = CGFloat(col) / 4.0 * cellW
                    let rawY = CGFloat(row) * cellH
                    let pt = warped(x: rawX, y: rawY, sz: sz)
                    if first { path.move(to: pt); first = false } else { path.addLine(to: pt) }
                }
                let frac = influence(x: nil, y: CGFloat(row) * cellH, sz: sz)
                context.opacity = 0.22 + Double(frac) * 0.45
                context.stroke(path, with: .color(lineColor(frac)), lineWidth: 0.7)
            }

            // Vertical lines
            for col in 0...gridCols {
                var path = Path()
                var first = true
                for row in 0...(gridRows * 4) {
                    let rawX = CGFloat(col) * cellW
                    let rawY = CGFloat(row) / 4.0 * cellH
                    let pt = warped(x: rawX, y: rawY, sz: sz)
                    if first { path.move(to: pt); first = false } else { path.addLine(to: pt) }
                }
                let frac = influence(x: CGFloat(col) * cellW, y: nil, sz: sz)
                context.opacity = 0.22 + Double(frac) * 0.45
                context.stroke(path, with: .color(lineColor(frac)), lineWidth: 0.7)
            }

            // Warp rings
            for item in bodies {
                let rings = max(1, Int(item.bodyType.mass * 2.0))
                for i in 1...rings {
                    let fi    = CGFloat(i)
                    let ringR = fi * 22.0
                    let alpha = max(0.0, 0.6 - Double(fi) / Double(rings) * 0.55)
                    let pulse = (sin(time * 1.5 + fi * 0.5) + 1.0) * 0.5
                    context.opacity = alpha * (0.7 + Double(pulse) * 0.3)
                    context.stroke(
                        Path(ellipseIn: CGRect(x: item.position.x - ringR,
                                               y: item.position.y - ringR * 0.6,
                                               width: ringR * 2.0, height: ringR * 1.2)),
                        with: .color(item.bodyType.color.opacity(0.9)),
                        lineWidth: 1.2
                    )
                }
            }
        }
    }

    // FIX: explicit CGFloat arithmetic – avoids "ambiguous use of operator '*'"
    private func warped(x: CGFloat, y: CGFloat, sz: CGSize) -> CGPoint {
        var wx: CGFloat = x
        var wy: CGFloat = y
        for item in bodies {
            let dx: CGFloat = x - item.position.x
            let dy: CGFloat = y - item.position.y
            let dist: CGFloat = sqrt(dx * dx + dy * dy)
            let inf: CGFloat = max(0.0, 1.0 - dist / (sz.width * 0.55))
            let warp: CGFloat = item.bodyType.gridWarpDepth * inf * inf * magnification
            let safe: CGFloat = max(dist, 1.0)
            wx += (-dx / safe) * warp * 0.35 + gridWarpExtra * inf * 0.1 * (dx / safe)
            wy += (-dy / safe) * warp        + gridWarpExtra * inf * 0.2 * (dy / safe)
        }
        return CGPoint(x: wx, y: wy)
    }

    private func influence(x: CGFloat?, y: CGFloat?, sz: CGSize) -> CGFloat {
        let px: CGFloat = x ?? sz.width  / 2.0
        let py: CGFloat = y ?? sz.height / 2.0
        var maxInf: CGFloat = 0.0
        for item in bodies {
            let dx: CGFloat = px - item.position.x
            let dy: CGFloat = py - item.position.y
            let dist: CGFloat = sqrt(dx * dx + dy * dy)
            let inf: CGFloat  = max(0.0, 1.0 - dist / (sz.width * 0.55))
            maxInf = max(maxInf, inf * min(1.0, item.bodyType.mass / 18.0))
        }
        return maxInf
    }

    private func lineColor(_ t: CGFloat) -> Color {
        Color(red: 0.1 + Double(t) * 0.4,
              green: 0.6 + Double(t) * 0.3,
              blue:  1.0 - Double(t) * 0.3)
    }
}

// MARK: - Lab Particle Model

struct LabParticle {
    var position: CGPoint
    var velocity: CGPoint
    var lifetime: CGFloat
    var maxLifetime: CGFloat
    var color: Color
    var size: CGFloat
}

// MARK: - Lab Particle Canvas

struct LabParticleCanvas: View {
    let bodies: [CelestialBody]
    let size: CGSize
    let time: CGFloat

    var body: some View {
        Canvas { context, sz in
            drawAccretionDisks(context: context)
            drawLensingArcs(context: context)
            drawGravitationalWaves(context: context, sz: sz)
        }
    }

    private func drawAccretionDisks(context: GraphicsContext) {
        for item in bodies {
            guard item.bodyType == .blackHole ||
                  item.bodyType == .neutronStar ||
                  item.bodyType == .star else { continue }
            let particleCount = Int(item.bodyType.mass * 6.0)
            guard particleCount > 0 else { continue }
            for i in 0..<particleCount {
                let fi: CGFloat    = CGFloat(i)
                let phase: CGFloat = fi / CGFloat(particleCount)
                let speed: CGFloat = item.bodyType == .blackHole   ? 1.8
                                   : item.bodyType == .neutronStar ? 1.2 : 0.6
                let angle: CGFloat  = phase * .pi * 2.0 + time * speed
                let orbitA: CGFloat = item.bodyType.radius * (2.5 + sin(fi * 0.7) * 0.8)
                let orbitB: CGFloat = orbitA * (item.bodyType == .blackHole ? 0.3 : 0.5)
                let px: CGFloat     = item.position.x + cos(angle) * orbitA
                let py: CGFloat     = item.position.y + sin(angle) * orbitB
                let twinkle: CGFloat = (sin(time * 3.0 + fi * 0.5) + 1.0) * 0.5
                let alpha: Double   = 0.4 + Double(twinkle) * 0.5
                let pr: CGFloat     = max(0.6, 2.5 - item.bodyType.mass * 0.08 + twinkle * 0.8)
                var ctx = context
                ctx.opacity = alpha
                ctx.fill(Path(ellipseIn: CGRect(x: px - pr, y: py - pr,
                                                width: pr * 2.0, height: pr * 2.0)),
                         with: .color(item.bodyType.color))
            }
        }
    }

    private func drawLensingArcs(context: GraphicsContext) {
        for item in bodies where item.bodyType == .blackHole {
            for arcIdx in 0..<3 {
                let fi: CGFloat       = CGFloat(arcIdx)
                let arcRadius: CGFloat = item.bodyType.radius * (3.5 + fi * 1.2)
                var arcPath = Path()
                let startAngle: CGFloat = time * 0.4 + fi * .pi * 0.667
                let arcSpan: CGFloat    = .pi * 0.8
                var firstPt = true
                for step in 0...60 {
                    let a: CGFloat  = startAngle + CGFloat(step) / 60.0 * arcSpan
                    let px: CGFloat = item.position.x + cos(a) * arcRadius
                    let py: CGFloat = item.position.y + sin(a) * arcRadius * 0.45
                    if firstPt { arcPath.move(to: CGPoint(x: px, y: py)); firstPt = false }
                    else        { arcPath.addLine(to: CGPoint(x: px, y: py)) }
                }
                var ctx = context
                ctx.opacity = 0.55 - Double(arcIdx) * 0.12
                ctx.stroke(arcPath, with: .color(item.bodyType.color),
                           lineWidth: CGFloat(1.5) - CGFloat(arcIdx) * 0.3)
            }
        }
    }

    private func drawGravitationalWaves(context: GraphicsContext, sz: CGSize) {
        guard bodies.count >= 2 else { return }
        for i in 0..<bodies.count {
            for j in (i + 1)..<bodies.count {
                let b1 = bodies[i], b2 = bodies[j]
                let combinedMass: CGFloat = b1.bodyType.mass + b2.bodyType.mass
                let cx: CGFloat = (b1.position.x + b2.position.x) / 2.0
                let cy: CGFloat = (b1.position.y + b2.position.y) / 2.0
                for waveIdx in 0..<4 {
                    let wp: CGFloat  = fmod(time * 0.4 + CGFloat(waveIdx) * 0.25, 1.0)
                    let waveR: CGFloat = wp * min(sz.width, sz.height) * 0.4
                    let alpha: Double  = Double(max(0.0, 1.0 - wp * 1.8))
                                       * Double(min(1.0, combinedMass / 20.0)) * 0.4
                    var ctx = context
                    ctx.opacity = alpha
                    ctx.stroke(
                        Path(ellipseIn: CGRect(x: cx - waveR, y: cy - waveR,
                                               width: waveR * 2.0, height: waveR * 2.0)),
                        with: .color(b1.bodyType.color.opacity(0.7)),
                        lineWidth: 1.0
                    )
                }
            }
        }
    }
}

// MARK: - Celestial Body Visual
// FIX: renamed stored property 'body' → 'item' to avoid clash with 'var body: some View'

struct CelestialBodyView: View {
    let item: CelestialBody

    var body: some View {
        ZStack {
            // Glow rings
            ForEach(0..<4, id: \.self) { layer in
                Circle()
                    .fill(item.bodyType.color.opacity(0.06 + Double(4 - layer) * 0.04))
                    .frame(width:  (item.bodyType.radius + CGFloat(layer) * 10.0) * 2.0,
                           height: (item.bodyType.radius + CGFloat(layer) * 10.0) * 2.0)
            }
            coreView
        }
    }

    // FIX: extracted into separate @ViewBuilder to fix compiler type-check timeout
    @ViewBuilder
    private var coreView: some View {
        if item.bodyType == .blackHole {
            Circle()
                .fill(Color.black)
                .frame(width: item.bodyType.radius * 2.0, height: item.bodyType.radius * 2.0)
                .overlay(
                    Circle().stroke(
                        LinearGradient(colors: [item.bodyType.color, item.bodyType.color.opacity(0.3)],
                                       startPoint: .topLeading, endPoint: .bottomTrailing),
                        lineWidth: 2
                    )
                )
        } else if item.bodyType == .star {
            Circle()
                .fill(RadialGradient(
                    colors: [Color.white, item.bodyType.color, item.bodyType.color.opacity(0.5)],
                    center: .topLeading, startRadius: 0, endRadius: item.bodyType.radius * 2.0))
                .frame(width: item.bodyType.radius * 2.0, height: item.bodyType.radius * 2.0)
        } else if item.bodyType == .neutronStar {
            Circle()
                .fill(RadialGradient(
                    colors: [Color.white, item.bodyType.color],
                    center: .center, startRadius: 0, endRadius: item.bodyType.radius))
                .frame(width: item.bodyType.radius * 2.0, height: item.bodyType.radius * 2.0)
        } else {
            Circle()
                .fill(RadialGradient(
                    colors: [item.bodyType.color.opacity(0.9),
                             item.bodyType.color.opacity(0.4),
                             item.bodyType.color.opacity(0.2)],
                    center: UnitPoint(x: 0.35, y: 0.3),
                    startRadius: 0, endRadius: item.bodyType.radius * 2.0))
                .frame(width: item.bodyType.radius * 2.0, height: item.bodyType.radius * 2.0)
                .overlay(
                    Ellipse()
                        .stroke(item.bodyType.color.opacity(0.4), lineWidth: 2)
                        .frame(width: item.bodyType.radius * 3.5, height: item.bodyType.radius * 0.7)
                )
        }
    }
}

// MARK: - HUD

struct LabHUDView: View {
    let bodies: [CelestialBody]
    let ageGroup: AgeGroup
    @Binding var simulationRunning: Bool
    @Binding var showParticles: Bool

    private var totalMass: CGFloat { bodies.reduce(0.0) { $0 + $1.bodyType.mass } }

    private var ageLabel: String {
        switch ageGroup {
        case .child:   return "Heavy things bend space — watch the grid!"
        case .preteen: return "Massive objects warp the spacetime grid!"
        case .teen:    return "Curvature κ increases with mass. Observe lensing arcs."
        case .adult:   return "G_μν = 8πT_μν — observe geodesic deviation."
        }
    }

    var body: some View {
        VStack {
            topBar
            if !bodies.isEmpty { massRow }
            Spacer()
        }
    }

    private var topBar: some View {
        HStack {
            VStack(alignment: .leading, spacing: 3) {
                Text("SPACETIME LAB")
                    .font(.system(size: 11, weight: .bold, design: .monospaced))
                    .foregroundStyle(Color(red: 0.3, green: 1.0, blue: 0.7))
                Text(bodies.isEmpty ? "Drop objects to warp spacetime" : ageLabel)
                    .font(.system(size: 12, weight: .regular, design: .rounded))
                    .foregroundStyle(.white.opacity(0.65))
                    .lineLimit(1)
                    .minimumScaleFactor(0.7)
            }
            Spacer()
            Button {
                withAnimation(.spring(response: 0.4)) { showParticles.toggle() }
            } label: {
                Image(systemName: showParticles ? "sparkles" : "sparkles.slash")
                    .font(.system(size: 14))
                    .foregroundStyle(showParticles
                                     ? Color(red: 0.3, green: 1.0, blue: 0.7)
                                     : .white.opacity(0.4))
                    .frame(width: 34, height: 34)
                    .glassCard(cornerRadius: 10, opacity: 0.1)
            }
            .buttonStyle(.plain)
            .accessibilityLabel("Toggle particle effects")
        }
        .padding(.horizontal, 20)
        .padding(.top, 56)
        .padding(.bottom, 10)
        .background(
            LinearGradient(colors: [Color.black.opacity(0.7), Color.black.opacity(0)],
                           startPoint: .top, endPoint: .bottom).ignoresSafeArea()
        )
    }

    private var massRow: some View {
        HStack(spacing: 12) {
            ForEach(CelestialBody.BodyType.allCases) { bType in
                let count = bodies.filter { $0.bodyType == bType }.count
                if count > 0 {
                    HStack(spacing: 5) {
                        Text(bType.emoji).font(.system(size: 13))
                        Text("\(count)")
                            .font(.system(size: 12, weight: .semibold, design: .monospaced))
                            .foregroundStyle(bType.color)
                            .contentTransition(.numericText())
                    }
                    .padding(.horizontal, 10).padding(.vertical, 5)
                    .glassCard(cornerRadius: 10, opacity: 0.1)
                }
            }
            Spacer()
            HStack(spacing: 4) {
                Image(systemName: "scalemass").font(.system(size: 10))
                Text(String(format: "M = %.1f", totalMass))
                    .font(.system(size: 11, weight: .semibold, design: .monospaced))
            }
            .foregroundStyle(Color(red: 0.3, green: 1.0, blue: 0.7))
            .padding(.horizontal, 10).padding(.vertical, 5)
            .glassCard(cornerRadius: 10, opacity: 0.1)
        }
        .padding(.horizontal, 20)
        .animation(.spring(response: 0.4), value: bodies.count)
    }
}

// MARK: - Lab Toolbar

struct LabToolbarView: View {
    @Binding var draggingBodyType: CelestialBody.BodyType?
    @Binding var dragLocation: CGPoint
    let onDrop: (CelestialBody.BodyType, CGPoint) -> Void
    let onClear: () -> Void
    let canvasSize: CGSize

    var body: some View {
        VStack(spacing: 0) {
            RoundedRectangle(cornerRadius: 2)
                .fill(Color.white.opacity(0.3))
                .frame(width: 40, height: 4)
                .padding(.top, 10).padding(.bottom, 8)

            HStack(spacing: 12) {
                ForEach(CelestialBody.BodyType.allCases) { bType in
                    ToolbarBodyButton(
                        bType: bType,
                        draggingBodyType: $draggingBodyType,
                        dragLocation: $dragLocation,
                        canvasSize: canvasSize,
                        onDrop: onDrop
                    )
                }
                Spacer()
                Button(action: onClear) {
                    VStack(spacing: 4) {
                        Image(systemName: "trash")
                            .font(.system(size: 16, weight: .light))
                            .foregroundStyle(.red.opacity(0.8))
                        Text("Clear")
                            .font(.system(size: 9, weight: .medium, design: .rounded))
                            .foregroundStyle(.red.opacity(0.7))
                    }
                    .frame(width: 54, height: 60)
                    .glassCard(cornerRadius: 14, opacity: 0.06)
                }
                .buttonStyle(.plain)
                .accessibilityLabel("Clear all objects")
            }
            .padding(.horizontal, 16).padding(.bottom, 30)
        }
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 28, style: .continuous)
                .fill(.ultraThinMaterial)
                .overlay(RoundedRectangle(cornerRadius: 28, style: .continuous)
                    .fill(Color.white.opacity(0.04)))
                .overlay(RoundedRectangle(cornerRadius: 28, style: .continuous)
                    .strokeBorder(Color.white.opacity(0.12), lineWidth: 1))
                .shadow(color: .black.opacity(0.5), radius: 20, y: -4)
        )
    }
}

// MARK: - Toolbar Body Button
// FIX: split into sub-computed-properties to fix "type-checker timeout" compiler error

struct ToolbarBodyButton: View {
    let bType: CelestialBody.BodyType
    @Binding var draggingBodyType: CelestialBody.BodyType?
    @Binding var dragLocation: CGPoint
    let canvasSize: CGSize
    let onDrop: (CelestialBody.BodyType, CGPoint) -> Void
    @State private var isDragging = false

    var body: some View {
        buttonContent
            .gesture(dragGesture)
            .accessibilityLabel("Drag to add \(bType.rawValue)")
            .accessibilityAddTraits(.isButton)
            .sensoryFeedback(.impact(weight: .medium), trigger: isDragging)
    }

    private var buttonContent: some View {
        VStack(spacing: 5) {
            glowOrb
            Text(bType.rawValue.components(separatedBy: " ").first ?? bType.rawValue)
                .font(.system(size: 9, weight: .medium, design: .rounded))
                .foregroundStyle(.white.opacity(0.65))
                .lineLimit(1)
        }
        .frame(width: 60, height: 68)
        .background(buttonBG)
        .scaleEffect(isDragging ? 1.12 : 1.0)
        .shadow(color: isDragging ? bType.color.opacity(0.5) : .clear, radius: 12)
        .animation(.spring(response: 0.35, dampingFraction: 0.75), value: isDragging)
    }

    private var glowOrb: some View {
        ZStack {
            ForEach(0..<3, id: \.self) { i in
                Circle()
                    .fill(bType.color.opacity(0.06 + Double(i) * 0.04))
                    .frame(width: CGFloat(28 + i * 8), height: CGFloat(28 + i * 8))
            }
            Text(bType.emoji).font(.system(size: 22))
        }
        .frame(width: 44, height: 44)
    }

    private var buttonBG: some View {
        RoundedRectangle(cornerRadius: 14, style: .continuous)
            .fill(isDragging ? bType.color.opacity(0.25) : Color.white.opacity(0.06))
            .overlay(
                RoundedRectangle(cornerRadius: 14, style: .continuous)
                    .strokeBorder(isDragging ? bType.color.opacity(0.6) : Color.white.opacity(0.1),
                                  lineWidth: 1)
            )
    }

    private var dragGesture: some Gesture {
        DragGesture(minimumDistance: 8, coordinateSpace: .global)
            .onChanged { val in
                isDragging = true
                draggingBodyType = bType
                dragLocation = val.location
            }
            .onEnded { val in
                isDragging = false
                draggingBodyType = nil
                if val.location.y < canvasSize.height - 140 {
                    onDrop(bType, val.location)
                }
            }
    }
}
