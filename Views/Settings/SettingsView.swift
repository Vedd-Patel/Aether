//
//  SettingsView.swift
//  Aether
//
//  Created by VED PATEL on 10/02/26.
//


import SwiftUI
import SwiftData

struct SettingsView: View {
    let profile: UserProfile
    @Environment(\.modelContext) private var modelContext
    @Environment(ConceptsManager.self) private var manager
    @State private var selectedAge: AgeGroup
    @State private var showResetConfirm = false
    @State private var appeared = false

    init(profile: UserProfile) {
        self.profile = profile
        _selectedAge = State(initialValue: profile.ageGroup)
    }

    var body: some View {
        NavigationStack {
            ZStack {
                CosmicMeshBackground(animate: true).ignoresSafeArea()

                ScrollView {
                    VStack(spacing: 20) {

                        // Profile Card
                        ProfileSectionCard(profile: profile, selectedAge: $selectedAge) {
                            profile.ageGroup = selectedAge
                            try? modelContext.save()
                        }
                        .opacity(appeared ? 1 : 0)
                        .offset(y: appeared ? 0 : 20)
                        .animation(.spring(response: 0.6).delay(0.1), value: appeared)

                        // Simulation Settings
                        SettingsSection(title: "SPACETIME LAB", icon: "scope") {
                            SettingsRow(icon: "sparkles", label: "Trigger Supernova") {
                                withAnimation(.spring(response: 0.5)) {
                                    manager.supernovaAgeGroup = profile.ageGroup
                                    manager.isShowingSupernova = true
                                }
                            }
                        }
                        .opacity(appeared ? 1 : 0)
                        .offset(y: appeared ? 0 : 20)
                        .animation(.spring(response: 0.6).delay(0.2), value: appeared)

                        // About Section
                        SettingsSection(title: "ABOUT", icon: "info.circle") {
                            SettingsInfoRow(label: "App", value: "Aether v1.0")
                            SettingsInfoRow(label: "Made for", value: "WWDC Swift Student Challenge")
                            SettingsInfoRow(label: "Framework", value: "SwiftUI + SwiftData")
                        }
                        .opacity(appeared ? 1 : 0)
                        .offset(y: appeared ? 0 : 20)
                        .animation(.spring(response: 0.6).delay(0.3), value: appeared)

                        // Reset
                        Button {
                            showResetConfirm = true
                        } label: {
                            HStack {
                                Image(systemName: "arrow.clockwise")
                                Text("Reset Onboarding")
                            }
                            .font(.system(size: 15, weight: .medium, design: .rounded))
                            .foregroundStyle(.red.opacity(0.8))
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 16)
                            .glassCard(cornerRadius: 16, opacity: 0.06)
                        }
                        .buttonStyle(.plain)
                        .opacity(appeared ? 1 : 0)
                        .animation(.spring(response: 0.6).delay(0.4), value: appeared)

                        Spacer().frame(height: 40)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 8)
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .toolbarBackground(.hidden, for: .navigationBar)
            .alert("Reset Onboarding?", isPresented: $showResetConfirm) {
                Button("Reset", role: .destructive) {
                    profile.hasCompletedOnboarding = false
                    try? modelContext.save()
                }
                Button("Cancel", role: .cancel) {}
            } message: {
                Text("You'll go through the onboarding flow again.")
            }
        }
        .onAppear { withAnimation { appeared = true } }
    }
}

// MARK: - Profile Section Card

struct ProfileSectionCard: View {
    let profile: UserProfile
    @Binding var selectedAge: AgeGroup
    let onSave: () -> Void

    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("PROFILE")
                    .font(.system(size: 11, weight: .bold, design: .monospaced))
                    .foregroundStyle(.white.opacity(0.4))
                Spacer()
                Image(systemName: "person.circle")
                    .foregroundStyle(Color(red: 0.7, green: 0.4, blue: 1.0))
            }

            // Age group picker
            VStack(alignment: .leading, spacing: 10) {
                Text("Age Group")
                    .font(.system(size: 13, weight: .medium, design: .rounded))
                    .foregroundStyle(.white.opacity(0.7))

                HStack(spacing: 8) {
                    ForEach(AgeGroup.allCases) { age in
                        Button {
                            withAnimation(.spring(response: 0.4, dampingFraction: 0.75)) {
                                selectedAge = age
                                onSave()
                            }
                        } label: {
                            VStack(spacing: 4) {
                                Text(age.emoji)
                                    .font(.system(size: 20))
                                Text(age.rawValue)
                                    .font(.system(size: 10, weight: .medium, design: .rounded))
                                    .foregroundStyle(.white.opacity(selectedAge == age ? 1 : 0.45))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(
                                RoundedRectangle(cornerRadius: 12, style: .continuous)
                                    .fill(selectedAge == age
                                          ? Color(red: 0.4, green: 0.1, blue: 0.9).opacity(0.45)
                                          : Color.white.opacity(0.05))
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 12, style: .continuous)
                                    .strokeBorder(selectedAge == age ? Color(red: 0.7, green: 0.4, blue: 1.0).opacity(0.6) : .clear, lineWidth: 1)
                            )
                            .scaleEffect(selectedAge == age ? 1.05 : 1.0)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }

            // Interests display
            VStack(alignment: .leading, spacing: 10) {
                Text("Your Interests")
                    .font(.system(size: 13, weight: .medium, design: .rounded))
                    .foregroundStyle(.white.opacity(0.7))
                if profile.interests.isEmpty {
                    Text("No interests selected")
                        .font(.system(size: 13, design: .rounded))
                        .foregroundStyle(.white.opacity(0.35))
                } else {
                    FlowLayout(items: profile.interests) { interest in
                        Text(interest)
                            .font(.system(size: 11, weight: .medium, design: .rounded))
                            .foregroundStyle(.white.opacity(0.85))
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .background(Capsule().fill(Color.white.opacity(0.1)))
                            .overlay(Capsule().strokeBorder(Color.white.opacity(0.15), lineWidth: 0.5))
                    }
                }
            }
        }
        .padding(18)
        .glassCard(cornerRadius: 20)
    }
}

// MARK: - Flow Layout

struct FlowLayout<Data: RandomAccessCollection, Content: View>: View where Data.Element: Hashable {
    let items: Data
    let content: (Data.Element) -> Content

    @State private var totalHeight = CGFloat.zero

    var body: some View {
        var width = CGFloat.zero
        var height = CGFloat.zero

        return GeometryReader { geo in
            ZStack(alignment: .topLeading) {
                ForEach(Array(items.enumerated()), id: \.element.hashValue) { _, item in
                    content(item)
                        .padding(.trailing, 6)
                        .padding(.bottom, 6)
                        .alignmentGuide(.leading) { d in
                            if abs(width - d.width) > geo.size.width {
                                width = 0; height -= d.height
                            }
                            let result = width
                            if items.last == item { width = 0 } else { width -= d.width }
                            return result
                        }
                        .alignmentGuide(.top) { _ in
                            let result = height
                            if items.last == item { height = 0 }
                            return result
                        }
                }
            }
            .background(GeometryReader { g in
                Color.clear.preference(key: ViewHeightKey.self, value: g.size.height)
            })
        }
        .onPreferenceChange(ViewHeightKey.self) { totalHeight = $0 }
        .frame(height: totalHeight)
    }
}

struct ViewHeightKey: PreferenceKey {
    static var defaultValue = CGFloat.zero
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = max(value, nextValue())
    }
}

// MARK: - Settings Section

struct SettingsSection<Content: View>: View {
    let title: String
    let icon: String
    @ViewBuilder let content: Content

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 6) {
                Image(systemName: icon)
                    .font(.system(size: 10, weight: .bold))
                Text(title)
                    .font(.system(size: 11, weight: .bold, design: .monospaced))
            }
            .foregroundStyle(.white.opacity(0.4))
            .padding(.bottom, 10)

            VStack(spacing: 0) {
                content
            }
            .glassCard(cornerRadius: 16, opacity: 0.08)
        }
    }
}

struct SettingsRow: View {
    let icon: String
    let label: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 14) {
                Image(systemName: icon)
                    .font(.system(size: 15))
                    .foregroundStyle(Color(red: 0.7, green: 0.4, blue: 1.0))
                    .frame(width: 28)
                Text(label)
                    .font(.system(size: 15, weight: .regular, design: .rounded))
                    .foregroundStyle(.white)
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundStyle(.white.opacity(0.3))
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 14)
        }
        .buttonStyle(.plain)
    }
}

struct SettingsInfoRow: View {
    let label: String
    let value: String

    var body: some View {
        HStack {
            Text(label)
                .font(.system(size: 15, weight: .regular, design: .rounded))
                .foregroundStyle(.white.opacity(0.7))
            Spacer()
            Text(value)
                .font(.system(size: 14, weight: .medium, design: .rounded))
                .foregroundStyle(.white.opacity(0.45))
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 13)
    }
}
