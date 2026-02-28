//
//  SupernovaOverlayView.swift
//  Aether
//
//  Created by VED PATEL on 13/02/26.
//


import SwiftUI

struct SupernovaOverlayView: View {
    let ageGroup: AgeGroup
    @Environment(ConceptsManager.self) private var manager
    @State private var phase: SupernovaPhase = .building
    @State private var shockwaveRadius: CGFloat = 0
    @State private var coreRadius: CGFloat = 0.001
    @State private var particleOpacity: CGFloat = 0
    @State private var textOpacity: CGFloat = 0
    @State private var particles: [SuperParticle] = []
    @State private var dismissTimer: Timer? = nil

    enum SupernovaPhase { case building, blast, expanding, fading }

    private var explanationText: String {
        switch ageGroup {
        case .child:   return "💥 SUPERNOVA! A giant star just exploded—\nbrighter than a billion suns!"
        case .preteen: return "🌟 SUPERNOVA! Core collapse released\n3×10⁴⁶ joules of pure energy!"
        case .teen:    return "⚡ TYPE II SUPERNOVA\nCore exceeded Chandrasekhar limit.\nNeutrino burst: 99% of released energy."
        case .adult:   return "CORE-COLLAPSE SN\nE_grav ≈ 3×10⁴⁶ J\nShock revival via SASI & neutrino convection.\nNucleosynthesis of r-process elements."
        }
    }

    var body: some View {
        GeometryReader { geo in

            ZStack {
                // Deep black during explosion
                Color.black.opacity(phase == .blast ? 0.95 : 0.7)
                    .ignoresSafeArea()
                    .animation(.easeInOut(duration: 0.3), value: phase)

                // Background star field
                StarFieldCanvas().opacity(0.4).ignoresSafeArea()

                // Shockwave rings
                TimelineView(.animation(minimumInterval: 1.0/60.0)) { ctx in
                    let t = CGFloat(ctx.date.timeIntervalSinceReferenceDate)
                    Canvas { context, sz in
                        let cxc = sz.width / 2, cyc = sz.height / 2

                        // Main shockwave
                        if phase == .expanding || phase == .fading {
                            for ring in 0..<5 {
                                let fr = CGFloat(ring)
                                let ringR = shockwaveRadius - fr * 18
                                guard ringR > 0 else { continue }
                                let alpha = Double(max(0, 1.0 - ringR / (sz.width * 0.7))) * (1.0 - Double(fr) * 0.18)
                                context.opacity = alpha
                                context.stroke(
                                    Path(ellipseIn: CGRect(x: cxc - ringR, y: cyc - ringR, width: ringR * 2, height: ringR * 2)),
                                    with: .color(Color(red: 1.0, green: 0.5, blue: 0.1)),
                                    lineWidth: max(0.5, 4.0 - Double(fr) * 0.7)
                                )
                            }
                        }

                        // Ejecta particles
                        for p in particles {
                            let alpha = Double(p.lifetime) * Double(particleOpacity)
                            guard alpha > 0 else { continue }
                            let px = cxc + p.position.x
                            let py = cyc + p.position.y
                            let pr = p.size
                            context.opacity = alpha
                            context.fill(
                                Path(ellipseIn: CGRect(x: px - pr, y: py - pr, width: pr * 2, height: pr * 2)),
                                with: .color(p.color)
                            )
                        }

                        // Core glow
                        if phase == .building || phase == .blast {
                            let pulse = (sin(t * 8) + 1) * 0.5
                            for gl in 0..<8 {
                                let gr = coreRadius * (1.0 + CGFloat(gl) * 0.4) + CGFloat(gl) * 8
                                let glAlpha = 0.7 / Double(gl + 1) * (0.7 + Double(pulse) * 0.3)
                                context.opacity = max(0, min(1, glAlpha))
                                context.fill(
                                    Path(ellipseIn: CGRect(x: cxc - gr, y: cyc - gr, width: gr * 2, height: gr * 2)),
                                    with: .color(Color(red: 1.0, green: 0.8, blue: 0.3))
                                )
                            }
                        }

                        // Neutron star remnant
                        if phase == .fading && shockwaveRadius > geo.size.width * 0.3 {
                            let remnantAlpha = min(1.0, Double((shockwaveRadius - geo.size.width * 0.3) / (geo.size.width * 0.2)))
                            for gl in 0..<5 {
                                let gr = CGFloat(gl * 6) + 6
                                context.opacity = remnantAlpha * 0.5 / Double(gl + 1)
                                context.fill(
                                    Path(ellipseIn: CGRect(x: cxc - gr, y: cyc - gr, width: gr * 2, height: gr * 2)),
                                    with: .color(Color(red: 0.3, green: 0.8, blue: 1.0))
                                )
                            }
                            context.opacity = remnantAlpha
                            context.fill(
                                Path(ellipseIn: CGRect(x: cxc - 5, y: cyc - 5, width: 10, height: 10)),
                                with: .color(.white)
                            )
                        }
                    }
                }

                // Explanation text
                VStack(spacing: 16) {
                    Spacer()

                    VStack(spacing: 10) {
                        Text("SUPERNOVA")
                            .font(.system(size: 38, weight: .black, design: .monospaced))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [Color(red: 1.0, green: 0.8, blue: 0.2), Color(red: 1.0, green: 0.3, blue: 0.1)],
                                    startPoint: .leading, endPoint: .trailing
                                )
                            )
                            .shadow(color: Color(red: 1.0, green: 0.5, blue: 0.1).opacity(0.8), radius: 20)
                            .tracking(4)

                        Text(explanationText)
                            .font(.system(size: 15, weight: .regular, design: .rounded))
                            .foregroundStyle(.white.opacity(0.85))
                            .multilineTextAlignment(.center)
                            .lineSpacing(4)
                            .padding(.horizontal, 32)

                        Button {
                            dismissSuperNova()
                        } label: {
                            Text("Close")
                                .font(.system(size: 15, weight: .semibold, design: .rounded))
                                .foregroundStyle(.white.opacity(0.7))
                                .padding(.horizontal, 24)
                                .padding(.vertical, 10)
                                .glassCard(cornerRadius: 12, opacity: 0.12)
                        }
                        .buttonStyle(.plain)
                        .padding(.top, 8)
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 28)
                    .glassCard(cornerRadius: 24, opacity: 0.08, borderOpacity: 0.15)
                    .padding(.horizontal, 24)
                    .opacity(Double(textOpacity))

                    Spacer().frame(height: 60)
                }

            }
        }
        .onAppear { startAnimation() }
        .onDisappear { dismissTimer?.invalidate() }
    }

    private func startAnimation() {
        // Spawn particles
        particles = (0..<120).map { _ in SuperParticle.random() }

        // Build phase
        withAnimation(.easeIn(duration: 0.8)) { coreRadius = 40 }

        // Blast
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            withAnimation(.spring(response: 0.15, dampingFraction: 0.5)) {
                phase = .blast
                coreRadius = 120
                particleOpacity = 1
            }
        }

        // Expand
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            phase = .expanding
            withAnimation(.easeOut(duration: 2.5)) {
                shockwaveRadius = 700
                coreRadius = 8
            }
            withAnimation(.easeIn(duration: 0.8).delay(0.5)) {
                textOpacity = 1
            }
        }

        // Fade ejecta
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            phase = .fading
            withAnimation(.easeOut(duration: 1.5)) { particleOpacity = 0 }
        }

        // Auto-dismiss after 7 seconds
        dismissTimer = Timer.scheduledTimer(withTimeInterval: 7.0, repeats: false) { _ in
            DispatchQueue.main.async { dismissSuperNova() }
        }
    }

    private func dismissSuperNova() {
        withAnimation(.easeOut(duration: 0.6)) {
            textOpacity = 0
            particleOpacity = 0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            manager.isShowingSupernova = false
        }
    }
}

// MARK: - Super Particle

struct SuperParticle {
    var position: CGPoint
    let velocity: CGPoint
    var lifetime: CGFloat
    let color: Color
    let size: CGFloat

    static func random() -> SuperParticle {
        let angle = CGFloat.random(in: 0...(.pi * 2))
        let speed = CGFloat.random(in: 0.5...3.5)
        let colors: [Color] = [
            Color(red: 1.0, green: 0.8, blue: 0.2),
            Color(red: 1.0, green: 0.5, blue: 0.1),
            Color(red: 1.0, green: 0.9, blue: 0.4),
            Color(red: 0.8, green: 0.3, blue: 1.0),
            Color(red: 0.3, green: 0.8, blue: 1.0),
            .white
        ]
        return SuperParticle(
            position: CGPoint(
                x: CGFloat.random(in: -300...300),
                y: CGFloat.random(in: -300...300)
            ),
            velocity: CGPoint(x: cos(angle) * speed, y: sin(angle) * speed),
            lifetime: CGFloat.random(in: 0.5...1.0),
            color: colors.randomElement()!,
            size: CGFloat.random(in: 1.5...5.0)
        )
    }
}
