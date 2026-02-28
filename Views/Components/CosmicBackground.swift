//
//  CosmicBackground.swift
//  Aether
//
//  Created by VED PATEL on 01/02/26.
//


import SwiftUI

// MARK: - Cosmic Mesh Gradient Background

struct CosmicMeshBackground: View {
    let animate: Bool

    init(animate: Bool = true) {
        self.animate = animate
    }

    var body: some View {
        TimelineView(.animation(minimumInterval: 1.0 / 30.0)) { ctx in
            let t = animate ? CGFloat(ctx.date.timeIntervalSinceReferenceDate) : 0
            ZStack {
                Color(red: 0.02, green: 0.015, blue: 0.07)
                    .ignoresSafeArea()

                MeshGradient(
                    width: 3, height: 3,
                    points: meshPoints(t: t),
                    colors: meshColors(t: t)
                )
                .opacity(0.80)
                .ignoresSafeArea()

                StarFieldCanvas()
                    .opacity(0.55)
                    .ignoresSafeArea()
            }
        }
    }

    // Gently undulating control points
    private func meshPoints(t: CGFloat) -> [SIMD2<Float>] {
        let s: CGFloat = 0.18
        return [
            [0.0,  0.0 ],
            [0.5 + Float(sin(t * 0.31) * s * 0.4), 0.0 ],
            [1.0,  0.0 ],
            [0.0,  0.5 + Float(cos(t * 0.27) * s * 0.3)],
            [0.5 + Float(sin(t * 0.19) * s), 0.5 + Float(cos(t * 0.23) * s)],
            [1.0,  0.5 + Float(sin(t * 0.29) * s * 0.3)],
            [0.0,  1.0 ],
            [0.5 + Float(cos(t * 0.37) * s * 0.4), 1.0 ],
            [1.0,  1.0 ]
        ].map { SIMD2<Float>($0[0], $0[1]) }
    }

    private func meshColors(t: CGFloat) -> [Color] {
        let pulse = (sin(t * 0.41) + 1) * 0.5
        let pulse2 = (cos(t * 0.33) + 1) * 0.5
        return [
            Color(red: 0.04, green: 0.02, blue: 0.15),
            Color(red: 0.08 + Double(pulse) * 0.04, green: 0.02, blue: 0.28 + Double(pulse) * 0.12),
            Color(red: 0.02, green: 0.04, blue: 0.18),
            Color(red: 0.10, green: 0.01, blue: 0.35 + Double(pulse2) * 0.15),
            Color(red: 0.18 + Double(pulse) * 0.08, green: 0.02, blue: 0.55 + Double(pulse) * 0.2),
            Color(red: 0.05, green: 0.02, blue: 0.25),
            Color(red: 0.02, green: 0.02, blue: 0.12),
            Color(red: 0.06, green: 0.01, blue: 0.22 + Double(pulse2) * 0.1),
            Color(red: 0.02, green: 0.02, blue: 0.10)
        ]
    }
}

// MARK: - Star Field

struct StarFieldCanvas: View {
    private struct Star: Identifiable {
        let id: Int
        let x: CGFloat
        let y: CGFloat
        let size: CGFloat
        let phase: CGFloat
        let speed: CGFloat
    }

    private let stars: [Star] = (0..<220).map { i in
        Star(
            id: i,
            x: CGFloat.random(in: 0...1),
            y: CGFloat.random(in: 0...1),
            size: CGFloat.random(in: 0.8...2.6),
            phase: CGFloat.random(in: 0...(.pi * 2)),
            speed: CGFloat.random(in: 0.4...1.8)
        )
    }

    var body: some View {
        TimelineView(.animation(minimumInterval: 1.0 / 30.0)) { ctx in
            let t = CGFloat(ctx.date.timeIntervalSinceReferenceDate)
            Canvas { context, size in
                for star in stars {
                    let twinkle = (sin(t * star.speed + star.phase) + 1) * 0.5
                    let alpha = 0.3 + twinkle * 0.7
                    let x = star.x * size.width
                    let y = star.y * size.height
                    let r = star.size * (0.7 + twinkle * 0.3)

                    // Star glow
                    let glowRect = CGRect(x: x - r * 3, y: y - r * 3, width: r * 6, height: r * 6)
                    context.opacity = alpha * 0.15
                    context.fill(Path(ellipseIn: glowRect), with: .color(.white))

                    // Star core
                    let coreRect = CGRect(x: x - r, y: y - r, width: r * 2, height: r * 2)
                    context.opacity = alpha
                    context.fill(Path(ellipseIn: coreRect), with: .color(.white))
                }
            }
        }
    }
}

// MARK: - Glassmorphic Card Modifier

struct GlassCard: ViewModifier {
    var cornerRadius: CGFloat = 20
    var opacity: Double = 0.12
    var borderOpacity: Double = 0.25

    func body(content: Content) -> some View {
        content
            .background(
                RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                    .fill(.ultraThinMaterial)
                    .overlay(
                        RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                            .fill(Color.white.opacity(opacity))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                            .strokeBorder(
                                LinearGradient(
                                    colors: [Color.white.opacity(borderOpacity), Color.white.opacity(0.05)],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                ),
                                lineWidth: 1
                            )
                    )
            )
    }
}

extension View {
    func glassCard(cornerRadius: CGFloat = 20, opacity: Double = 0.12, borderOpacity: Double = 0.25) -> some View {
        modifier(GlassCard(cornerRadius: cornerRadius, opacity: opacity, borderOpacity: borderOpacity))
    }
}
