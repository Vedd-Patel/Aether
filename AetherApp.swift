//
//  AetherApp.swift
//  Aether
//
//  Created by VED PATEL on 27/01/26.
//

import SwiftUI
import SwiftData

@main
struct AetherApp: App {

    let container: ModelContainer = {
        let schema = Schema([
            UserProfile.self,
            EducationalConcept.self,
            SavedConcept.self
        ])
        let config = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        do {
            return try ModelContainer(for: schema, configurations: [config])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    // @Observable classes must use @State in the App struct
    @State private var conceptsManager = ConceptsManager.shared

    var body: some Scene {
        WindowGroup {
            RootView()
                .modelContainer(container)
                .environment(conceptsManager)
                .preferredColorScheme(ColorScheme.dark)
        }
    }
}
