//
//  OnboardingView.swift
//  Aether
//
//  Created by VED PATEL on 29/01/26.
//


import SwiftUI
import SwiftData

struct OnboardingView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var currentStep: Int = 0
    @State private var selectedAge: AgeGroup = .teen
    @State private var selectedInterests: Set<String> = []
    @State private var showContent = false

    private let allInterests = ConceptCategory.allCases.map(\.rawValue)

    var body: some View {
        ZStack {
            CosmicMeshBackground(animate: true)
                .ignoresSafeArea()

            VStack {
                // Step content
                Group {
                    if currentStep == 0 {
                        WelcomeStep(showContent: $showContent)
                            .transition(.asymmetric(
                                insertion: .move(edge: .trailing).combined(with: .opacity),
                                removal: .move(edge: .leading).combined(with: .opacity)
                            ))
                    } else if currentStep == 1 {
                        AgeSelectionStep(selected: $selectedAge)
                            .transition(.asymmetric(
                                insertion: .move(edge: .trailing).combined(with: .opacity),
                                removal: .move(edge: .leading).combined(with: .opacity)
                            ))
                    } else {
                        InterestSelectionStep(selected: $selectedInterests, interests: allInterests)
                            .transition(.asymmetric(
                                insertion: .move(edge: .trailing).combined(with: .opacity),
                                removal: .move(edge: .leading).combined(with: .opacity)
                            ))
                    }
                }
                .animation(.spring(response: 0.6, dampingFraction: 0.85), value: currentStep)

                Spacer()

                // Progress dots + button
                VStack(spacing: 24) {
                    HStack(spacing: 8) {
                        ForEach(0..<3) { i in
                            Capsule()
                                .fill(i == currentStep ? Color.white : Color.white.opacity(0.3))
                                .frame(width: i == currentStep ? 24 : 8, height: 8)
                                .animation(.spring(response: 0.4, dampingFraction: 0.7), value: currentStep)
                        }
                    }

                    Button(action: advance) {
                        HStack(spacing: 10) {
                            Text(currentStep == 2 ? "Launch Aether" : "Continue")
                                .font(.system(size: 17, weight: .semibold, design: .rounded))
                            Image(systemName: currentStep == 2 ? "sparkles" : "arrow.right")
                                .font(.system(size: 15, weight: .semibold))
                        }
                        .foregroundStyle(.black)
                        .padding(.horizontal, 36)
                        .padding(.vertical, 16)
                        .background(
                            Capsule()
                                .fill(LinearGradient(
                                    colors: [Color.white, Color(red: 0.85, green: 0.85, blue: 1.0)],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                ))
                        )
                        .shadow(color: .white.opacity(0.3), radius: 20, x: 0, y: 8)
                    }
                    .buttonStyle(.plain)
                    .scaleEffect(1.0)
                    .sensoryFeedback(.impact(weight: .medium), trigger: currentStep)
                }
                .padding(.bottom, 50)
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.8).delay(0.3)) {
                showContent = true
            }
        }
    }

    private func advance() {
        if currentStep < 2 {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.85)) {
                currentStep += 1
            }
        } else {
            completeOnboarding()
        }
    }

    private func completeOnboarding() {
        let profile = UserProfile(
            ageGroup: selectedAge,
            interests: Array(selectedInterests),
            hasCompletedOnboarding: true
        )
        modelContext.insert(profile)
        try? modelContext.save()
    }
}

// MARK: - Welcome Step

struct WelcomeStep: View {
    @Binding var showContent: Bool
    @State private var glowPulse = false

    var body: some View {
        VStack(spacing: 28) {
            Spacer().frame(height: 80)

            // Animated logo
            ZStack {
                ForEach(0..<3) { i in
                    Circle()
                        .stroke(
                            LinearGradient(
                                colors: [
                                    Color(red: 0.55, green: 0.2, blue: 1.0),
                                    Color(red: 0.1, green: 0.6, blue: 1.0)
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            ),
                            lineWidth: 1.5
                        )
                        .frame(width: CGFloat(60 + i * 35), height: CGFloat(60 + i * 35))
                        .opacity(glowPulse ? 0.15 + Double(i) * 0.12 : 0.08 + Double(i) * 0.06)
                        .scaleEffect(glowPulse ? 1.0 + CGFloat(i) * 0.04 : 1.0)
                        .animation(
                            .easeInOut(duration: 2.2).repeatForever(autoreverses: true).delay(Double(i) * 0.4),
                            value: glowPulse
                        )
                }

                Image(systemName: "atom")
                    .font(.system(size: 52, weight: .ultraLight))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [Color(red: 0.7, green: 0.4, blue: 1.0), Color(red: 0.2, green: 0.8, blue: 1.0)],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .shadow(color: Color(red: 0.55, green: 0.2, blue: 1.0).opacity(0.8), radius: 20)
            }
            .opacity(showContent ? 1 : 0)
            .scaleEffect(showContent ? 1 : 0.5)
            .animation(.spring(response: 0.8, dampingFraction: 0.7).delay(0.1), value: showContent)

            VStack(spacing: 12) {
                Text("Aether")
                    .font(.system(size: 52, weight: .thin, design: .serif))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.white, Color(red: 0.75, green: 0.65, blue: 1.0)],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .opacity(showContent ? 1 : 0)
                    .offset(y: showContent ? 0 : 20)
                    .animation(.spring(response: 0.7, dampingFraction: 0.8).delay(0.25), value: showContent)

                Text("Explore the Universe")
                    .font(.system(size: 18, weight: .light, design: .rounded))
                    .foregroundStyle(.white.opacity(0.7))
                    .opacity(showContent ? 1 : 0)
                    .offset(y: showContent ? 0 : 15)
                    .animation(.spring(response: 0.7, dampingFraction: 0.8).delay(0.4), value: showContent)
            }

            VStack(spacing: 16) {
                FeaturePill(icon: "sparkles", text: "Adaptive to your age & expertise")
                FeaturePill(icon: "scope", text: "Interactive Spacetime Lab")
                FeaturePill(icon: "waveform.path", text: "Physics simulations in real-time")
            }
            .opacity(showContent ? 1 : 0)
            .offset(y: showContent ? 0 : 30)
            .animation(.spring(response: 0.7, dampingFraction: 0.8).delay(0.55), value: showContent)
        }
        .padding(.horizontal, 32)
        .onAppear { glowPulse = true }
    }
}

struct FeaturePill: View {
    let icon: String
    let text: String

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 14, weight: .medium))
                .foregroundStyle(Color(red: 0.7, green: 0.5, blue: 1.0))
                .frame(width: 28, height: 28)
                .background(Circle().fill(Color(red: 0.7, green: 0.5, blue: 1.0).opacity(0.15)))
            Text(text)
                .font(.system(size: 15, weight: .regular, design: .rounded))
                .foregroundStyle(.white.opacity(0.8))
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
        .glassCard(cornerRadius: 14, opacity: 0.08)
    }
}

// MARK: - Age Selection Step

struct AgeSelectionStep: View {
    @Binding var selected: AgeGroup
    @State private var appeared = false

    var body: some View {
        VStack(spacing: 28) {
            Spacer().frame(height: 60)

            VStack(spacing: 8) {
                Text("How old are you?")
                    .font(.system(size: 34, weight: .thin, design: .serif))
                    .foregroundStyle(.white)
                Text("Your experience adapts to match you")
                    .font(.system(size: 16, weight: .light, design: .rounded))
                    .foregroundStyle(.white.opacity(0.6))
            }
            .opacity(appeared ? 1 : 0)
            .offset(y: appeared ? 0 : 20)
            .animation(.spring(response: 0.6, dampingFraction: 0.8).delay(0.1), value: appeared)

            VStack(spacing: 14) {
                ForEach(Array(AgeGroup.allCases.enumerated()), id: \.element.id) { idx, age in
                    AgeGroupCard(age: age, isSelected: selected == age) {
                        withAnimation(.spring(response: 0.4, dampingFraction: 0.75)) {
                            selected = age
                        }
                    }
                    .opacity(appeared ? 1 : 0)
                    .offset(y: appeared ? 0 : 30)
                    .animation(.spring(response: 0.6, dampingFraction: 0.8).delay(0.15 + Double(idx) * 0.08), value: appeared)
                }
            }
            .padding(.horizontal, 24)
        }
        .onAppear { withAnimation { appeared = true } }
    }
}

struct AgeGroupCard: View {
    let age: AgeGroup
    let isSelected: Bool
    let action: () -> Void
    @State private var pressed = false

    var body: some View {
        Button(action: action) {
            HStack(spacing: 16) {
                Text(age.emoji)
                    .font(.system(size: 32))
                    .frame(width: 48)

                VStack(alignment: .leading, spacing: 3) {
                    Text(age.displayName)
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                        .foregroundStyle(.white)
                    Text(age.complexityLabel)
                        .font(.system(size: 13, weight: .regular, design: .rounded))
                        .foregroundStyle(.white.opacity(0.6))
                }

                Spacer()

                ZStack {
                    Circle()
                        .stroke(isSelected ? Color.white : Color.white.opacity(0.25), lineWidth: 1.5)
                        .frame(width: 22, height: 22)
                    if isSelected {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 12, height: 12)
                            .transition(.scale.combined(with: .opacity))
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 16)
            .background(
                RoundedRectangle(cornerRadius: 18, style: .continuous)
                    .fill(isSelected
                          ? LinearGradient(colors: [Color(red: 0.4, green: 0.1, blue: 0.9).opacity(0.5), Color(red: 0.1, green: 0.4, blue: 0.9).opacity(0.35)], startPoint: .topLeading, endPoint: .bottomTrailing)
                          : LinearGradient(colors: [Color.white.opacity(0.07), Color.white.opacity(0.03)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .overlay(
                        RoundedRectangle(cornerRadius: 18, style: .continuous)
                            .strokeBorder(
                                isSelected ? Color.white.opacity(0.4) : Color.white.opacity(0.12),
                                lineWidth: 1
                            )
                    )
            )
            .scaleEffect(isSelected ? 1.02 : 1.0)
            .shadow(color: isSelected ? Color(red: 0.4, green: 0.1, blue: 0.9).opacity(0.5) : .clear, radius: 16, y: 6)
        }
        .buttonStyle(.plain)
    }
}

// MARK: - Interest Selection Step

struct InterestSelectionStep: View {
    @Binding var selected: Set<String>
    let interests: [String]
    @State private var appeared = false

    private let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        VStack(spacing: 24) {
            Spacer().frame(height: 60)

            VStack(spacing: 8) {
                Text("What excites you?")
                    .font(.system(size: 34, weight: .thin, design: .serif))
                    .foregroundStyle(.white)
                Text("Pick all that spark your curiosity")
                    .font(.system(size: 16, weight: .light, design: .rounded))
                    .foregroundStyle(.white.opacity(0.6))
            }
            .opacity(appeared ? 1 : 0)
            .animation(.spring(response: 0.6).delay(0.1), value: appeared)

            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(Array(ConceptCategory.allCases.enumerated()), id: \.element.id) { idx, cat in
                    InterestCard(
                        category: cat,
                        isSelected: selected.contains(cat.rawValue)
                    ) {
                        withAnimation(.spring(response: 0.35, dampingFraction: 0.7)) {
                            if selected.contains(cat.rawValue) {
                                selected.remove(cat.rawValue)
                            } else {
                                selected.insert(cat.rawValue)
                            }
                        }
                    }
                    .opacity(appeared ? 1 : 0)
                    .scaleEffect(appeared ? 1 : 0.8)
                    .animation(.spring(response: 0.5, dampingFraction: 0.75).delay(0.1 + Double(idx) * 0.07), value: appeared)
                }
            }
            .padding(.horizontal, 20)
        }
        .onAppear { withAnimation { appeared = true } }
    }
}

struct InterestCard: View {
    let category: ConceptCategory
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack(spacing: 10) {
                Image(systemName: category.icon)
                    .font(.system(size: 26, weight: .light))
                    .foregroundStyle(isSelected ? .white : category.color)
                    .frame(height: 32)

                Text(category.rawValue)
                    .font(.system(size: 13, weight: .medium, design: .rounded))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .fill(isSelected
                          ? category.color.opacity(0.35)
                          : Color.white.opacity(0.06))
                    .overlay(
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .strokeBorder(
                                isSelected ? category.color.opacity(0.7) : Color.white.opacity(0.1),
                                lineWidth: 1
                            )
                    )
            )
            .shadow(color: isSelected ? category.color.opacity(0.4) : .clear, radius: 12, y: 4)
            .scaleEffect(isSelected ? 1.04 : 1.0)
        }
        .buttonStyle(.plain)
    }
}
