//
//  MainTabView.swift
//  Aether
//
//  Created by VED PATEL on 31/01/26.
//


import SwiftUI
import SwiftData

struct MainTabView: View {
    let profile: UserProfile
    @State private var selectedTab: AetherTab = .feed
    @Environment(ConceptsManager.self) private var manager

    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Explore", systemImage: "sparkles", value: AetherTab.feed) {
                FeedView(profile: profile)
            }

            Tab("Lab", systemImage: "scope", value: AetherTab.lab) {
                SpacetimeLabView(ageGroup: profile.ageGroup)
            }

            Tab("Saved", systemImage: "bookmark.fill", value: AetherTab.favorites) {
                FavoritesView(profile: profile)
            }

            Tab("Settings", systemImage: "slider.horizontal.3", value: AetherTab.settings) {
                SettingsView(profile: profile)
            }
        }
        .tint(Color(red: 0.7, green: 0.4, blue: 1.0))
        // Supernova overlay
        .overlay {
            if manager.isShowingSupernova {
                SupernovaOverlayView(ageGroup: manager.supernovaAgeGroup)
                    .transition(.opacity)
                    .zIndex(999)
            }
        }
        .animation(.easeInOut(duration: 0.4), value: manager.isShowingSupernova)
    }
}

enum AetherTab: Hashable {
    case feed, lab, favorites, settings
}
