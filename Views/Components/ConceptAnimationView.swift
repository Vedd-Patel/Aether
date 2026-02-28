//
//  ConceptAnimationView.swift
//  Aether
//
//  Created by VED PATEL on 01/02/26.
//


import SwiftUI

// MARK: - Router

struct ConceptAnimationView: View {
    let animationType: ConceptAnimation
    let color: Color
    var size: CGFloat = 200

    var body: some View {
        Group {
            switch animationType {
            case .blackHoleVortex:      BlackHoleVortexView(color: color, size: size)
            case .pulsarStar:           PulsarStarView(color: color, size: size)
            case .quantumOrbitals:      QuantumOrbitalsView(color: color, size: size)
            case .nebulaCloud:          NebulaCloudView(color: color, size: size)
            case .wormhole:             WormholeView(color: color, size: size)
            case .supernovaExplosion:   SupernovaView(color: color, size: size)
            case .gravitationalWaves:   GravitationalWavesView(color: color, size: size)
            case .cosmicString:         CosmicStringView(color: color, size: size)
            }
        }
        .frame(width: size, height: size)
        .clipped()
    }
}

// MARK: - Black Hole Vortex

struct BlackHoleVortexView: View {
    let color: Color
    let size: CGFloat

    var body: some View {
        TimelineView(.animation(minimumInterval: 1.0/60.0)) { ctx in
            let t = CGFloat(ctx.date.timeIntervalSinceReferenceDate)
            Canvas { context, sz in
                let cx = sz.width / 2, cy = sz.height / 2
                let r = min(sz.width, sz.height) * 0.45

                // Accretion disk rings
                for i in stride(from: 24, through: 2, by: -1) {
                    let fi = CGFloat(i)
                    let radius = r * (fi / 24.0)
                    let rotationAngle = t * (1.2 + fi * 0.08) * (i.isMultiple(of: 2) ? 1 : -1)
                    let alpha = Double(fi / 24.0) * 0.6

                    var path = Path()
                    for j in 0..<120 {
                        let angle = CGFloat(j) / 120.0 * .pi * 2 + rotationAngle
                        let wobble = sin(angle * 5 + t * 2) * radius * 0.08
                        let pr = radius + wobble
                        let px = cx + cos(angle) * pr
                        let py = cy + sin(angle) * pr * 0.3 // elliptical disk

                        if j == 0 { path.move(to: CGPoint(x: px, y: py)) }
                        else { path.addLine(to: CGPoint(x: px, y: py)) }
                    }
                    path.closeSubpath()
                    context.opacity = alpha
                    context.stroke(path, with: .color(color), lineWidth: 1.2)
                }

                // Event horizon - absolute black
                let horizonR = r * 0.22
                context.opacity = 1.0
                context.fill(
                    Path(ellipseIn: CGRect(x: cx - horizonR, y: cy - horizonR * 0.6,
                                           width: horizonR * 2, height: horizonR * 1.2)),
                    with: .color(.black)
                )

                // Lensing glow
                let glowR = horizonR * 1.5
                for layer in 0..<5 {
                    let lr = glowR + CGFloat(layer) * 4
                    context.opacity = 0.25 / Double(layer + 1)
                    context.stroke(
                        Path(ellipseIn: CGRect(x: cx - lr, y: cy - lr * 0.65, width: lr * 2, height: lr * 1.3)),
                        with: .color(color),
                        lineWidth: 2
                    )
                }

                // Particle jets
                for j in 0..<40 {
                    let fj = CGFloat(j)
                    let angle = t * 3.0 + fj * 0.25
                    let dist = (fj / 40.0) * r * 1.4
                    let spread = sin(angle * 3) * (fj / 40.0) * 8
                    let px = cx + spread
                    let py = cy - dist
                    let py2 = cy + dist
                    let alpha = 1.0 - Double(fj / 40.0)
                    let pr = max(0.5, 2.0 * (1.0 - Double(fj / 40.0)))
                    context.opacity = alpha * 0.7
                    context.fill(Path(ellipseIn: CGRect(x: px-pr, y: py-pr, width: pr*2, height: pr*2)), with: .color(color))
                    context.fill(Path(ellipseIn: CGRect(x: px-pr, y: py2-pr, width: pr*2, height: pr*2)), with: .color(color))
                }
            }
        }
    }
}

// MARK: - Pulsar Star

struct PulsarStarView: View {
    let color: Color
    let size: CGFloat

    var body: some View {
        TimelineView(.animation(minimumInterval: 1.0/60.0)) { ctx in
            let t = CGFloat(ctx.date.timeIntervalSinceReferenceDate)
            Canvas { context, sz in
                let cx = sz.width / 2, cy = sz.height / 2
                let r = min(sz.width, sz.height) * 0.18
                let pulse = (sin(t * 4.0) + 1) * 0.5

                // Glow rings
                for i in 0..<6 {
                    let fi = CGFloat(i)
                    let gr = r + fi * 12 + pulse * 15
                    let alpha = max(0, 0.55 - Double(fi) * 0.09 + Double(pulse) * 0.1)
                    context.opacity = alpha
                    context.stroke(
                        Path(ellipseIn: CGRect(x: cx-gr, y: cy-gr, width: gr*2, height: gr*2)),
                        with: .color(color),
                        lineWidth: max(0.5, 3.0 - Double(fi) * 0.5)
                    )
                }

                // Rotation beams
                for beamIdx in 0..<2 {
                    let baseAngle = t * 2.5 + CGFloat(beamIdx) * .pi
                    for step in 0..<60 {
                        let fstep = CGFloat(step)
                        let dist = fstep * r * 0.075
                        let spread = (fstep / 60.0) * 0.35
                        let bAngle1 = baseAngle + spread
                        let bAngle2 = baseAngle - spread
                        let alpha = max(0, (1.0 - Double(fstep / 60.0)) * 0.7)
                        context.opacity = alpha
                        let pr = max(0.3, 2.5 - Double(fstep) * 0.038)
                        for bAngle in [bAngle1, bAngle2] {
                            let px = cx + cos(bAngle) * dist
                            let py = cy + sin(bAngle) * dist
                            context.fill(Path(ellipseIn: CGRect(x: px-pr, y: py-pr, width: pr*2, height: pr*2)), with: .color(color))
                        }
                    }
                }

                // Star core
                let starR = r + pulse * r * 0.25
                context.opacity = 1.0
                context.fill(Path(ellipseIn: CGRect(x: cx-starR, y: cy-starR, width: starR*2, height: starR*2)), with: .color(.white))

                // Spike cross
                let spikeLen = starR * (3.0 + pulse * 1.5)
                for angle in [0.0, .pi/2, .pi, 3 * .pi/2] as [CGFloat] {
                    var spike = Path()
                    spike.move(to: CGPoint(x: cx, y: cy))
                    spike.addLine(to: CGPoint(x: cx + cos(angle) * spikeLen, y: cy + sin(angle) * spikeLen))
                    context.opacity = 0.5 + Double(pulse) * 0.3
                    context.stroke(spike, with: .color(color), lineWidth: 2)
                }
            }
        }
    }
}

// MARK: - Quantum Orbitals

struct QuantumOrbitalsView: View {
    let color: Color
    let size: CGFloat

    var body: some View {
        TimelineView(.animation(minimumInterval: 1.0/60.0)) { ctx in
            let t = CGFloat(ctx.date.timeIntervalSinceReferenceDate)
            Canvas { context, sz in
                let cx = sz.width / 2, cy = sz.height / 2

                let orbits: [(CGFloat, CGFloat, CGFloat, Int)] = [
                    (sz.width * 0.35, sz.height * 0.12, 1.0,  1),
                    (sz.width * 0.28, sz.height * 0.28, 1.8, -1),
                    (sz.width * 0.15, sz.height * 0.42, 2.6,  1),
                ]

                for (a, b, speed, dir) in orbits {
                    // Draw elliptical path
                    context.opacity = 0.25
                    context.stroke(
                        Path(ellipseIn: CGRect(x: cx-a, y: cy-b, width: a*2, height: b*2)),
                        with: .color(color),
                        lineWidth: 1
                    )

                    // Electron position
                    let angle = t * speed * CGFloat(dir)
                    let ex = cx + cos(angle) * a
                    let ey = cy + sin(angle) * b

                    // Electron trail
                    for step in 0..<20 {
                        let trailAngle = angle - CGFloat(step) * 0.12 * CGFloat(dir)
                        let tx = cx + cos(trailAngle) * a
                        let ty = cy + sin(trailAngle) * b
                        let trailAlpha = (1.0 - Double(step) / 20.0) * 0.5
                        let trailR = max(0.5, 3.0 - Double(step) * 0.12)
                        context.opacity = trailAlpha
                        context.fill(Path(ellipseIn: CGRect(x: tx-trailR, y: ty-trailR, width: trailR*2, height: trailR*2)), with: .color(color))
                    }

                    // Electron glow
                    for glowLayer in 0..<4 {
                        let gr = CGFloat(glowLayer) * 3 + 3
                        context.opacity = 0.6 / Double(glowLayer + 1)
                        context.fill(Path(ellipseIn: CGRect(x: ex-gr, y: ey-gr, width: gr*2, height: gr*2)), with: .color(color))
                    }

                    // Electron core
                    context.opacity = 1.0
                    context.fill(Path(ellipseIn: CGRect(x: ex-3, y: ey-3, width: 6, height: 6)), with: .color(.white))
                }

                // Nucleus
                let nPulse = (sin(t * 3) + 1) * 0.5
                for layer in 0..<5 {
                    let nr = CGFloat(layer) * 3 + 4 + nPulse * 4
                    context.opacity = 0.6 / Double(layer + 1)
                    context.fill(Path(ellipseIn: CGRect(x: cx-nr, y: cy-nr, width: nr*2, height: nr*2)), with: .color(color))
                }
                context.opacity = 1.0
                context.fill(Path(ellipseIn: CGRect(x: cx-5, y: cy-5, width: 10, height: 10)), with: .color(.white))

                // Probability cloud dots
                for i in 0..<80 {
                    let fi = CGFloat(i)
                    let cloudAngle = fi * 0.618 * .pi * 2 + t * 0.2
                    let cloudR = (sin(fi * 0.4) * 0.5 + 0.5) * sz.width * 0.4
                    let px = cx + cos(cloudAngle) * cloudR
                    let py = cy + sin(cloudAngle) * cloudR * 0.5
                    context.opacity = 0.07
                    context.fill(Path(ellipseIn: CGRect(x: px-1, y: py-1, width: 2, height: 2)), with: .color(color))
                }
            }
        }
    }
}

// MARK: - Nebula Cloud

struct NebulaCloudView: View {
    let color: Color
    let size: CGFloat

    var body: some View {
        TimelineView(.animation(minimumInterval: 1.0/30.0)) { ctx in
            let t = CGFloat(ctx.date.timeIntervalSinceReferenceDate)
            Canvas { context, sz in
                let cx = sz.width / 2, cy = sz.height / 2

                // Layered nebula blobs
                let blobs: [(CGFloat, CGFloat, CGFloat, CGFloat)] = [
                    (cx + sin(t * 0.3) * 20, cy + cos(t * 0.25) * 15, 90, 0.25),
                    (cx + cos(t * 0.4) * 30, cy + sin(t * 0.35) * 25, 70, 0.2),
                    (cx + sin(t * 0.55) * 40, cy - cos(t * 0.45) * 30, 55, 0.18),
                    (cx - cos(t * 0.38) * 25, cy + sin(t * 0.42) * 20, 65, 0.22),
                    (cx - sin(t * 0.28) * 15, cy - cos(t * 0.31) * 35, 80, 0.15),
                ]

                for (bx, by, br, alpha) in blobs {
                    context.opacity = Double(alpha)
                    context.fill(
                        Path(ellipseIn: CGRect(x: bx - br, y: by - br, width: br * 2, height: br * 2)),
                        with: .color(color)
                    )
                }

                // Bright star cores inside nebula
                let stars = [(cx - 20, cy - 15), (cx + 25, cy + 10), (cx, cy - 30), (cx + 10, cy + 25)]
                for (sx, sy) in stars {
                    let sPulse = (sin(t * 2.5 + CGFloat(sx) * 0.01) + 1) * 0.5
                    for glowL in 0..<4 {
                        let gr = CGFloat(glowL) * 5 + 3 + sPulse * 5
                        context.opacity = 0.5 / Double(glowL + 1)
                        context.fill(Path(ellipseIn: CGRect(x: sx-gr, y: sy-gr, width: gr*2, height: gr*2)), with: .color(color))
                    }
                    context.opacity = 1.0
                    context.fill(Path(ellipseIn: CGRect(x: sx-2, y: sy-2, width: 4, height: 4)), with: .color(.white))
                }

                // Floating particles
                for i in 0..<50 {
                    let fi = CGFloat(i)
                    let px = cx + sin(fi * 0.8 + t * 0.3) * sz.width * 0.42
                    let py = cy + cos(fi * 0.65 + t * 0.25) * sz.height * 0.4
                    let alpha = (sin(fi + t * 0.6) + 1) * 0.15
                    context.opacity = Double(alpha)
                    context.fill(Path(ellipseIn: CGRect(x: px-1.2, y: py-1.2, width: 2.4, height: 2.4)), with: .color(.white))
                }
            }
        }
    }
}

// MARK: - Wormhole

struct WormholeView: View {
    let color: Color
    let size: CGFloat

    var body: some View {
        TimelineView(.animation(minimumInterval: 1.0/60.0)) { ctx in
            let t = CGFloat(ctx.date.timeIntervalSinceReferenceDate)
            Canvas { context, sz in
                let cx = sz.width / 2, cy = sz.height / 2

                // Concentric warped rings drawing tunnel perspective
                let ringCount = 28
                for i in 0..<ringCount {
                    let fi = CGFloat(i)
                    let progress = fi / CGFloat(ringCount)
                    // Speed gives sense of motion into tunnel
                    let offset = fmod(t * 0.5, 1.0 / CGFloat(ringCount)) * CGFloat(ringCount)
                    let adjProgress = fmod(progress + t * 0.15, 1.0)
                    let ringR = (1.0 - adjProgress) * sz.width * 0.46
                    let ringH = ringR * (0.35 + adjProgress * 0.25) // perspective squash

                    guard ringR > 1 else { continue }
                    let alpha = Double(adjProgress) * 0.7
                    context.opacity = alpha
                    context.stroke(
                        Path(ellipseIn: CGRect(x: cx - ringR, y: cy - ringH, width: ringR * 2, height: ringH * 2)),
                        with: .color(color),
                        lineWidth: 1.2
                    )
                    _ = offset // suppress warning
                }

                // Bright tunnel center glow
                let centerPulse = (sin(t * 2) + 1) * 0.5
                for gl in 0..<6 {
                    let gr = CGFloat(gl) * 5 + 5 + centerPulse * 8
                    context.opacity = 0.5 / Double(gl + 1)
                    context.fill(Path(ellipseIn: CGRect(x: cx-gr, y: cy-gr, width: gr*2, height: gr*2)), with: .color(color))
                }
                context.opacity = 1.0
                context.fill(Path(ellipseIn: CGRect(x: cx-4, y: cy-4, width: 8, height: 8)), with: .color(.white))

                // Streaking particles
                for i in 0..<30 {
                    let fi = CGFloat(i)
                    let streamPhase = fmod(t * 0.8 + fi * 0.033, 1.0)
                    let angle = fi * 0.209 * .pi * 2
                    let dist = streamPhase * sz.width * 0.45
                    let px = cx + cos(angle) * dist
                    let py = cy + sin(angle) * dist * 0.4
                    let trailLen = (1.0 - streamPhase) * 18
                    let px2 = cx + cos(angle) * max(0, dist - trailLen)
                    let py2 = cy + sin(angle) * max(0, dist - trailLen) * 0.4
                    context.opacity = Double(streamPhase) * 0.8

                    var streamPath = Path()
                    streamPath.move(to: CGPoint(x: px2, y: py2))
                    streamPath.addLine(to: CGPoint(x: px, y: py))
                    context.stroke(streamPath, with: .color(color), lineWidth: 1.5)
                }
            }
        }
    }
}

// MARK: - Supernova

struct SupernovaView: View {
    let color: Color
    let size: CGFloat
    @State private var exploded = false

    var body: some View {
        TimelineView(.animation(minimumInterval: 1.0/60.0)) { ctx in
            let t = CGFloat(ctx.date.timeIntervalSinceReferenceDate)
            Canvas { context, sz in
                let cx = sz.width / 2, cy = sz.height / 2

                // Looping explosion (3-second loop)
                let loopT = fmod(t, 3.0) / 3.0
                let blastR = loopT * sz.width * 0.5

                // Shock wave ring
                context.opacity = Double(max(0, 1.0 - loopT * 2))
                context.stroke(
                    Path(ellipseIn: CGRect(x: cx-blastR, y: cy-blastR, width: blastR*2, height: blastR*2)),
                    with: .color(color),
                    lineWidth: 3
                )

                // Shrapnel particles
                for i in 0..<60 {
                    let fi = CGFloat(i)
                    let angle = fi / 60.0 * .pi * 2
                    let jitter = sin(fi * 7.3) * 0.3 + 1.0
                    let dist = blastR * jitter
                    let px = cx + cos(angle) * dist
                    let py = cy + sin(angle) * dist
                    let alpha = Double(max(0, 1.0 - loopT * 1.5))
                    let pr = max(0.3, Double(2.5 - loopT * 2.5))
                    context.opacity = alpha
                    context.fill(Path(ellipseIn: CGRect(x: px-pr, y: py-pr, width: pr*2, height: pr*2)), with: .color(color))
                }

                // Hot core (collapses then brightens)
                let corePhase = loopT < 0.15 ? 1.0 - loopT / 0.15 : max(0, (loopT - 0.15) / 0.3)
                let coreR = CGFloat(corePhase) * sz.width * 0.12
                for gl in 0..<6 {
                    let gr = coreR + CGFloat(gl) * 6
                    context.opacity = Double(corePhase) * 0.5 / Double(gl + 1)
                    context.fill(Path(ellipseIn: CGRect(x: cx-gr, y: cy-gr, width: gr*2, height: gr*2)), with: .color(.white))
                }

                // Remnant glow
                if loopT > 0.4 {
                    let fadeIn = min(1.0, (loopT - 0.4) * 3.0)
                    let fadeOut = max(0.0, 1.0 - (loopT - 0.6) * 2.5)
                    let remGlow = Double(fadeIn) * Double(fadeOut)
                    for gl in 0..<4 {
                        let gr = CGFloat(gl + 1) * 10.0
                        context.opacity = remGlow * 0.4 / Double(gl + 1)
                        context.fill(Path(ellipseIn: CGRect(x: cx-gr, y: cy-gr, width: gr*2, height: gr*2)), with: .color(color))
                    }
                }
            }
        }
    }
}

// MARK: - Gravitational Waves

struct GravitationalWavesView: View {
    let color: Color
    let size: CGFloat

    var body: some View {
        TimelineView(.animation(minimumInterval: 1.0/60.0)) { ctx in
            let t = CGFloat(ctx.date.timeIntervalSinceReferenceDate)
            Canvas { context, sz in
                let cx = sz.width / 2, cy = sz.height / 2

                // Two merging masses
                let separation = max(4, 40 - fmod(t * 4, 44))
                let m1x = cx - separation / 2
                let m2x = cx + separation / 2
                let merging = separation < 8

                // Orbital path
                if !merging {
                    context.opacity = 0.15
                    context.stroke(
                        Path(ellipseIn: CGRect(x: cx - separation / 2 - 6, y: cy - 6, width: separation + 12, height: 12)),
                        with: .color(color),
                        lineWidth: 1
                    )
                }

                // Masses glow
                for (mx, radius) in [(m1x, 8.0), (m2x, 8.0)] {
                    for gl in 0..<5 {
                        let gr = CGFloat(gl * 4) + CGFloat(radius)
                        context.opacity = 0.4 / Double(gl + 1)
                        context.fill(Path(ellipseIn: CGRect(x: mx-gr, y: cy-gr, width: gr*2, height: gr*2)), with: .color(color))
                    }
                    context.opacity = 1.0
                    let cr = CGFloat(radius)
                    context.fill(Path(ellipseIn: CGRect(x: mx-cr, y: cy-cr, width: cr*2, height: cr*2)), with: .color(.white))
                }

                // Rippling GW rings outward
                for i in 0..<8 {
                    let fi = CGFloat(i)
                    let waveProgress = fmod(t * 0.7 + fi * 0.125, 1.0)
                    let waveR = waveProgress * sz.width * 0.6
                    let alpha = Double(max(0, 1.0 - waveProgress * 1.4)) * 0.6
                    context.opacity = alpha
                    context.stroke(
                        Path(ellipseIn: CGRect(x: cx - waveR, y: cy - waveR, width: waveR * 2, height: waveR * 2)),
                        with: .color(color),
                        lineWidth: 1.5
                    )
                }

                // Merge flash
                if merging {
                    let flashPulse = (sin(t * 20) + 1) * 0.5
                    for gl in 0..<8 {
                        let gr = CGFloat(gl * 8) + 8
                        context.opacity = Double(flashPulse) * 0.6 / Double(gl + 1)
                        context.fill(Path(ellipseIn: CGRect(x: cx-gr, y: cy-gr, width: gr*2, height: gr*2)), with: .color(color))
                    }
                }
            }
        }
    }
}

// MARK: - Cosmic String

struct CosmicStringView: View {
    let color: Color
    let size: CGFloat

    var body: some View {
        TimelineView(.animation(minimumInterval: 1.0/60.0)) { ctx in
            let t = CGFloat(ctx.date.timeIntervalSinceReferenceDate)
            Canvas { context, sz in
                let cx = sz.width / 2, cy = sz.height / 2

                // Dark matter web filaments
                let nodes: [CGPoint] = [
                    CGPoint(x: cx, y: cy),
                    CGPoint(x: cx + sz.width * 0.35, y: cy - sz.height * 0.2),
                    CGPoint(x: cx - sz.width * 0.32, y: cy - sz.height * 0.22),
                    CGPoint(x: cx + sz.width * 0.28, y: cy + sz.height * 0.3),
                    CGPoint(x: cx - sz.width * 0.3,  y: cy + sz.height * 0.28),
                    CGPoint(x: cx + sz.width * 0.44, y: cy + sz.height * 0.1),
                    CGPoint(x: cx - sz.width * 0.44, y: cy - sz.height * 0.05),
                ]

                // Animated connections
                for i in 0..<nodes.count {
                    for j in (i+1)..<nodes.count {
                        let n1 = nodes[i], n2 = nodes[j]
                        let flow = fmod(t * 0.5, 1.0)
                        let px = n1.x + (n2.x - n1.x) * CGFloat(flow)
                        let py = n1.y + (n2.y - n1.y) * CGFloat(flow)

                        var filament = Path()
                        filament.move(to: n1)
                        filament.addLine(to: n2)
                        context.opacity = 0.15
                        context.stroke(filament, with: .color(color), lineWidth: 0.8)

                        // Flowing energy
                        context.opacity = 0.7
                        context.fill(Path(ellipseIn: CGRect(x: px-2, y: py-2, width: 4, height: 4)), with: .color(color))
                    }
                }

                // Galaxy node halos
                for node in nodes {
                    let nodePulse = (sin(t * 1.5 + node.x * 0.05) + 1) * 0.5
                    for gl in 0..<4 {
                        let gr = CGFloat(gl * 5) + 5 + nodePulse * 6
                        context.opacity = 0.4 / Double(gl + 1)
                        context.fill(Path(ellipseIn: CGRect(x: node.x-gr, y: node.y-gr, width: gr*2, height: gr*2)), with: .color(color))
                    }
                    context.opacity = 0.9
                    context.fill(Path(ellipseIn: CGRect(x: node.x-3, y: node.y-3, width: 6, height: 6)), with: .color(.white))
                }

                // Void regions (dark circles between nodes)
                for i in 0..<3 {
                    let fi = CGFloat(i)
                    let voidAngle = t * 0.08 + fi * .pi * 0.667
                    let vx = cx + cos(voidAngle) * sz.width * 0.15
                    let vy = cy + sin(voidAngle) * sz.height * 0.12
                    let vr = 14.0 + Double(fi) * 5
                    context.opacity = 0.04
                    context.fill(Path(ellipseIn: CGRect(x: vx - CGFloat(vr), y: vy - CGFloat(vr), width: CGFloat(vr * 2), height: CGFloat(vr * 2))), with: .color(.black))
                }
            }
        }
    }
}
