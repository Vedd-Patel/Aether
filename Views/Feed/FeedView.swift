//
//  FeedView.swift
//  Aether
//
//  Created by VED PATEL on 07/02/26.
//


import SwiftUI
import SwiftData

struct FeedView: View {
    let profile: UserProfile
    @Environment(\.modelContext) private var modelContext
    @Environment(ConceptsManager.self) private var manager
    @Query private var concepts: [EducationalConcept]
    @State private var selectedConcept: EducationalConcept?
    @Namespace private var heroNamespace

    var body: some View {
        NavigationStack {
            ZStack {
                CosmicMeshBackground(animate: true)
                    .ignoresSafeArea()

                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(spacing: 20) {
                        // Header
                        FeedHeaderView(profile: profile)
                            .padding(.top, 8)

                        // Featured Banner
                        if let featured = concepts.first(where: { $0.isFeatured }) {
                            FeaturedConceptBanner(concept: featured, profile: profile, namespace: heroNamespace) {
                                selectedConcept = featured
                            }
                            .scrollTransition(.animated) { content, phase in
                                content
                                    .scaleEffect(phase.isIdentity ? 1 : 0.92)
                                    .opacity(phase.isIdentity ? 1 : 0.7)
                            }
                        }

                        // Category pills
                        CategoryScrollView()

                        // Concept cards
                        ForEach(concepts) { concept in
                            ConceptCardView(
                                concept: concept,
                                ageGroup: profile.ageGroup,
                                namespace: heroNamespace
                            ) {
                                withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
                                    selectedConcept = concept
                                }
                            }
                            .scrollTransition(.animated.threshold(.visible(0.2))) { content, phase in
                                content
                                    .rotation3DEffect(
                                        .degrees(phase.isIdentity ? 0 : -8),
                                        axis: (x: 1, y: 0, z: 0)
                                    )
                                    .scaleEffect(phase.isIdentity ? 1 : 0.9)
                                    .opacity(phase.isIdentity ? 1 : 0.5)
                            }
                        }

                        Spacer().frame(height: 40)
                    }
                    .padding(.horizontal, 20)
                }
            }
            .navigationBarHidden(true)
            .sheet(item: $selectedConcept) { concept in
                ConceptDetailView(concept: concept, profile: profile)
            }
        }
    }
}

// MARK: - Feed Header

struct FeedHeaderView: View {
    let profile: UserProfile
    @State private var greetingPulse = false

    private var greeting: String {
        let hour = Calendar.current.component(.hour, from: Date())
        switch hour {
        case 0..<12: return "Good morning"
        case 12..<17: return "Good afternoon"
        default: return "Good evening"
        }
    }

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(greeting)
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .foregroundStyle(.white.opacity(0.55))
                Text("Explore the Cosmos")
                    .font(.system(size: 28, weight: .thin, design: .serif))
                    .foregroundStyle(.white)
            }
            Spacer()
            // Profile badge
            ZStack {
                Circle()
                    .fill(LinearGradient(
                        colors: [Color(red: 0.4, green: 0.1, blue: 0.9), Color(red: 0.1, green: 0.5, blue: 0.9)],
                        startPoint: .topLeading, endPoint: .bottomTrailing
                    ))
                    .frame(width: 44, height: 44)
                    .shadow(color: Color(red: 0.4, green: 0.1, blue: 0.9).opacity(0.5), radius: 10)

                Text(profile.ageGroup.emoji)
                    .font(.system(size: 22))
            }
        }
        .padding(.vertical, 8)
    }
}

// MARK: - Featured Banner

struct FeaturedConceptBanner: View {
    let concept: EducationalConcept
    let profile: UserProfile
    let namespace: Namespace.ID
    let onTap: () -> Void
    @State private var appeared = false

    var body: some View {
        Button(action: onTap) {
            ZStack(alignment: .bottomLeading) {
                // Animation background
                ConceptAnimationView(
                    animationType: concept.animationType,
                    color: concept.category.color,
                    size: 380
                )
                .frame(maxWidth: .infinity)
                .frame(height: 220)
                .clipped()

                // Gradient overlay
                LinearGradient(
                    colors: [.clear, Color.black.opacity(0.85)],
                    startPoint: .top,
                    endPoint: .bottom
                )

                VStack(alignment: .leading, spacing: 6) {
                    HStack {
                        CategoryBadge(category: concept.category)
                        Spacer()
                        Text("FEATURED")
                            .font(.system(size: 10, weight: .bold, design: .monospaced))
                            .foregroundStyle(concept.category.color)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Capsule().fill(concept.category.color.opacity(0.15)))
                            .overlay(Capsule().strokeBorder(concept.category.color.opacity(0.4), lineWidth: 1))
                    }
                    Text(concept.title)
                        .font(.system(size: 26, weight: .semibold, design: .serif))
                        .foregroundStyle(.white)
                    Text(concept.description(for: profile.ageGroup))
                        .font(.system(size: 13, weight: .regular, design: .rounded))
                        .foregroundStyle(.white.opacity(0.7))
                        .lineLimit(2)
                }
                .padding(20)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 220)
            .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .strokeBorder(
                        LinearGradient(
                            colors: [concept.category.color.opacity(0.5), .clear],
                            startPoint: .topLeading, endPoint: .bottomTrailing
                        ),
                        lineWidth: 1
                    )
            )
            .shadow(color: concept.category.color.opacity(0.3), radius: 20, y: 10)
        }
        .buttonStyle(.plain)
    }
}

// MARK: - Category Scroll

struct CategoryScrollView: View {
    @State private var selected: ConceptCategory? = nil

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                CategoryPill(label: "All", color: .white, isSelected: selected == nil) {
                    selected = nil
                }
                ForEach(ConceptCategory.allCases) { cat in
                    CategoryPill(
                        label: cat.rawValue,
                        color: cat.color,
                        isSelected: selected == cat
                    ) {
                        withAnimation(.spring(response: 0.35, dampingFraction: 0.75)) {
                            selected = (selected == cat) ? nil : cat
                        }
                    }
                }
            }
            .padding(.horizontal, 2)
        }
    }
}

struct CategoryPill: View {
    let label: String
    let color: Color
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.system(size: 13, weight: .medium, design: .rounded))
                .foregroundStyle(isSelected ? .black : .white)
                .padding(.horizontal, 14)
                .padding(.vertical, 7)
                .background(
                    Capsule()
                        .fill(isSelected ? color : Color.white.opacity(0.1))
                )
                .overlay(
                    Capsule()
                        .strokeBorder(isSelected ? .clear : Color.white.opacity(0.2), lineWidth: 1)
                )
                .shadow(color: isSelected ? color.opacity(0.4) : .clear, radius: 8)
                .scaleEffect(isSelected ? 1.05 : 1.0)
        }
        .buttonStyle(.plain)
    }
}

// MARK: - Concept Card

struct ConceptCardView: View {
    let concept: EducationalConcept
    let ageGroup: AgeGroup
    let namespace: Namespace.ID
    let onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            HStack(spacing: 0) {
                // Animation panel
                ConceptAnimationView(
                    animationType: concept.animationType,
                    color: concept.category.color,
                    size: 130
                )
                .frame(width: 130, height: 130)
                .clipShape(RoundedRectangle(cornerRadius: 0))

                // Info panel
                VStack(alignment: .leading, spacing: 8) {
                    CategoryBadge(category: concept.category)
                    Text(concept.title)
                        .font(.system(size: 18, weight: .semibold, design: .serif))
                        .foregroundStyle(.white)
                    Text(concept.description(for: ageGroup))
                        .font(.system(size: 12, weight: .regular, design: .rounded))
                        .foregroundStyle(.white.opacity(0.65))
                        .lineLimit(3)
                    Spacer()
                    HStack {
                        Image(systemName: "eye")
                            .font(.system(size: 10))
                        Text("\(concept.viewCount + Int.random(in: 120...8400))")
                            .font(.system(size: 11, weight: .regular, design: .monospaced))
                    }
                    .foregroundStyle(.white.opacity(0.35))
                }
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(height: 130)
            .background(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(Color.white.opacity(0.06))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(
                                LinearGradient(
                                    colors: [concept.category.color.opacity(0.12), .clear],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    )
            )
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .strokeBorder(
                        LinearGradient(
                            colors: [concept.category.color.opacity(0.35), Color.white.opacity(0.07)],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ),
                        lineWidth: 1
                    )
            )
            .shadow(color: concept.category.color.opacity(0.15), radius: 12, y: 4)
        }
        .buttonStyle(.plain)
    }
}

// MARK: - Category Badge

struct CategoryBadge: View {
    let category: ConceptCategory

    var body: some View {
        HStack(spacing: 4) {
            Image(systemName: category.icon)
                .font(.system(size: 9, weight: .bold))
            Text(category.rawValue.uppercased())
                .font(.system(size: 9, weight: .bold, design: .monospaced))
        }
        .foregroundStyle(category.color)
        .padding(.horizontal, 8)
        .padding(.vertical, 3)
        .background(Capsule().fill(category.color.opacity(0.15)))
        .overlay(Capsule().strokeBorder(category.color.opacity(0.3), lineWidth: 0.5))
    }
}

// MARK: - Concept Detail View

struct ConceptDetailView: View {
    let concept: EducationalConcept
    let profile: UserProfile
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    @Query private var savedConcepts: [SavedConcept]
    @State private var appeared = false

    private var isSaved: Bool {
        savedConcepts.contains { $0.conceptID == concept.id }
    }

    var body: some View {
        ZStack {
            Color(red: 0.03, green: 0.02, blue: 0.1).ignoresSafeArea()
            CosmicMeshBackground(animate: true).ignoresSafeArea().opacity(0.6)

            ScrollView {
                VStack(spacing: 0) {
                    // Hero animation
                    ZStack(alignment: .topTrailing) {
                        ConceptAnimationView(
                            animationType: concept.animationType,
                            color: concept.category.color,
                            size: 420
                        )
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                        .clipped()

                        LinearGradient(
                            colors: [.clear, Color(red: 0.03, green: 0.02, blue: 0.1)],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        .frame(height: 300)

                        // Close & Save buttons
                        HStack(spacing: 12) {
                            Button {
                                toggleSave()
                            } label: {
                                Image(systemName: isSaved ? "bookmark.fill" : "bookmark")
                                    .font(.system(size: 16, weight: .semibold))
                                    .foregroundStyle(isSaved ? concept.category.color : .white)
                                    .frame(width: 40, height: 40)
                                    .glassCard(cornerRadius: 12, opacity: 0.15)
                            }
                            .buttonStyle(.plain)

                            Button { dismiss() } label: {
                                Image(systemName: "xmark")
                                    .font(.system(size: 14, weight: .bold))
                                    .foregroundStyle(.white)
                                    .frame(width: 40, height: 40)
                                    .glassCard(cornerRadius: 12, opacity: 0.15)
                            }
                            .buttonStyle(.plain)
                        }
                        .padding(20)
                    }

                    // Content
                    VStack(alignment: .leading, spacing: 20) {
                        CategoryBadge(category: concept.category)

                        Text(concept.title)
                            .font(.system(size: 36, weight: .thin, design: .serif))
                            .foregroundStyle(.white)

                        // Age group complexity indicator
                        HStack(spacing: 8) {
                            ForEach(AgeGroup.allCases) { ag in
                                Capsule()
                                    .fill(ag == profile.ageGroup ? concept.category.color : Color.white.opacity(0.15))
                                    .frame(height: 4)
                            }
                        }

                        Text(profile.ageGroup.complexityLabel)
                            .font(.system(size: 12, weight: .medium, design: .rounded))
                            .foregroundStyle(concept.category.color)

                        Text(concept.description(for: profile.ageGroup))
                            .font(.system(size: 17, weight: .light, design: .rounded))
                            .foregroundStyle(.white.opacity(0.88))
                            .lineSpacing(6)

                        // Fun fact divider
                        HStack {
                            Rectangle()
                                .fill(LinearGradient(colors: [.clear, concept.category.color.opacity(0.5)], startPoint: .leading, endPoint: .trailing))
                                .frame(height: 1)
                            Image(systemName: "sparkle")
                                .foregroundStyle(concept.category.color)
                            Rectangle()
                                .fill(LinearGradient(colors: [concept.category.color.opacity(0.5), .clear], startPoint: .leading, endPoint: .trailing))
                                .frame(height: 1)
                        }

                        Text("Try the Spacetime Lab →")
                            .font(.system(size: 15, weight: .semibold, design: .rounded))
                            .foregroundStyle(concept.category.color)

                        Spacer().frame(height: 40)
                    }
                    .padding(.horizontal, 24)
                    .padding(.top, 16)
                }
            }
        }
        .presentationDragIndicator(.visible)
        .presentationCornerRadius(32)
    }

    private func toggleSave() {
        if isSaved {
            if let existing = savedConcepts.first(where: { $0.conceptID == concept.id }) {
                modelContext.delete(existing)
            }
        } else {
            modelContext.insert(SavedConcept(concept: concept))
        }
        try? modelContext.save()
    }
}
