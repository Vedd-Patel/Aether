//
//  FavoritesView.swift
//  Aether
//
//  Created by VED PATEL on 9/02/26.
//


import SwiftUI
import SwiftData

struct FavoritesView: View {
    let profile: UserProfile
    @Query(sort: \SavedConcept.savedAt, order: .reverse) private var savedConcepts: [SavedConcept]
    @Environment(\.modelContext) private var modelContext
    @State private var selectedSaved: SavedConcept?
    @State private var editMode: Bool = false

    private let columns = [GridItem(.flexible(), spacing: 14), GridItem(.flexible(), spacing: 14)]

    var body: some View {
        NavigationStack {
            ZStack {
                CosmicMeshBackground(animate: true).ignoresSafeArea()

                if savedConcepts.isEmpty {
                    EmptySavedView()
                } else {
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 14) {
                            ForEach(savedConcepts) { saved in
                                SavedConceptCard(
                                    saved: saved,
                                    ageGroup: profile.ageGroup,
                                    editMode: editMode
                                ) {
                                    withAnimation(.spring(response: 0.3)) {
                                        modelContext.delete(saved)
                                        try? modelContext.save()
                                    }
                                }
                                .scrollTransition(.animated.threshold(.visible(0.1))) { content, phase in
                                    content
                                        .scaleEffect(phase.isIdentity ? 1 : 0.85)
                                        .opacity(phase.isIdentity ? 1 : 0.5)
                                }
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.top, 8)
                        .padding(.bottom, 40)
                    }
                }
            }
            .navigationTitle("Saved")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(editMode ? "Done" : "Edit") {
                        withAnimation(.spring(response: 0.4, dampingFraction: 0.75)) {
                            editMode.toggle()
                        }
                    }
                    .foregroundStyle(Color(red: 0.7, green: 0.4, blue: 1.0))
                    .disabled(savedConcepts.isEmpty)
                }
            }
            .toolbarBackground(.hidden, for: .navigationBar)
        }
    }
}

// MARK: - Saved Concept Card

struct SavedConceptCard: View {
    let saved: SavedConcept
    let ageGroup: AgeGroup
    let editMode: Bool
    let onDelete: () -> Void
    @State private var isShaking = false

    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(spacing: 0) {
                ConceptAnimationView(
                    animationType: saved.animationType,
                    color: saved.category.color,
                    size: 180
                )
                .frame(maxWidth: .infinity)
                .frame(height: 120)
                .clipped()

                VStack(alignment: .leading, spacing: 6) {
                    CategoryBadge(category: saved.category)
                    Text(saved.title)
                        .font(.system(size: 15, weight: .semibold, design: .serif))
                        .foregroundStyle(.white)
                    Text("\(saved.savedAt.formatted(.relative(presentation: .named))) ago")
                        .font(.system(size: 11, weight: .regular, design: .rounded))
                        .foregroundStyle(.white.opacity(0.4))
                }
                .padding(12)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(
                RoundedRectangle(cornerRadius: 18, style: .continuous)
                    .fill(Color.white.opacity(0.07))
                    .overlay(
                        RoundedRectangle(cornerRadius: 18, style: .continuous)
                            .strokeBorder(
                                LinearGradient(
                                    colors: [saved.category.color.opacity(0.4), Color.white.opacity(0.06)],
                                    startPoint: .topLeading, endPoint: .bottomTrailing
                                ),
                                lineWidth: 1
                            )
                    )
            )
            .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
            .shadow(color: saved.category.color.opacity(0.2), radius: 12, y: 6)
            .rotationEffect(.degrees(isShaking ? Double.random(in: -1.5...1.5) : 0))
            .animation(
                isShaking ? .easeInOut(duration: 0.1).repeatForever(autoreverses: true) : .default,
                value: isShaking
            )

            // Delete button
            if editMode {
                Button(action: onDelete) {
                    Image(systemName: "minus.circle.fill")
                        .font(.system(size: 22))
                        .foregroundStyle(.red)
                        .background(Circle().fill(Color.white).padding(3))
                        .shadow(color: .red.opacity(0.4), radius: 4)
                }
                .buttonStyle(.plain)
                .offset(x: 6, y: -6)
                .transition(.scale.combined(with: .opacity))
            }
        }
        .onChange(of: editMode) { _, newVal in
            withAnimation { isShaking = newVal }
        }
    }
}

// MARK: - Empty State

struct EmptySavedView: View {
    @State private var pulse = false

    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                ForEach(0..<3) { i in
                    Circle()
                        .stroke(Color(red: 0.55, green: 0.25, blue: 1.0).opacity(0.2), lineWidth: 1)
                        .frame(width: CGFloat(50 + i * 30))
                        .scaleEffect(pulse ? 1.1 + CGFloat(i) * 0.05 : 1.0)
                        .animation(.easeInOut(duration: 2.0 + Double(i) * 0.5).repeatForever(autoreverses: true), value: pulse)
                }
                Image(systemName: "bookmark.slash")
                    .font(.system(size: 32, weight: .ultraLight))
                    .foregroundStyle(Color(red: 0.55, green: 0.25, blue: 1.0).opacity(0.6))
            }
            Text("Nothing saved yet")
                .font(.system(size: 22, weight: .thin, design: .serif))
                .foregroundStyle(.white)
            Text("Tap the bookmark icon on any concept to save it here")
                .font(.system(size: 14, weight: .regular, design: .rounded))
                .foregroundStyle(.white.opacity(0.5))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
        }
        .onAppear { pulse = true }
    }
}


