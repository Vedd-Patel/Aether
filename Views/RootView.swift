//
//  RootView.swift
//  Aether
//
//  Created by VED PATEL on 06/02/26.
//


import SwiftUI
import SwiftData

struct RootView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var profiles: [UserProfile]
    @Environment(ConceptsManager.self) private var manager

    var body: some View {
        Group {
            if let profile = profiles.first, profile.hasCompletedOnboarding {
                MainTabView(profile: profile)
            } else {
                OnboardingView()
            }
        }
        .onAppear {
            ConceptsManager.seedIfNeeded(context: modelContext)
        }
    }
}
