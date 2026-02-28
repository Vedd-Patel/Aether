//
//  AetherIntents.swift
//  Aether
//
//  Created by VED PATEL on 11/02/26.
//


import AppIntents
import SwiftUI

// MARK: - Age Group Entity (must be an enum for AppEnum)

enum AgeGroupEntity: String, AppEnum {
    case child
    case preteen
    case teen
    case adult

    static var typeDisplayRepresentation: TypeDisplayRepresentation = "Age Group"
    static var caseDisplayRepresentations: [AgeGroupEntity: DisplayRepresentation] = [
        .child:   "5–8 (Child)",
        .preteen: "9–13 (Preteen)",
        .teen:    "14–18 (Teen)",
        .adult:   "Adult"
    ]

    func toAgeGroup() -> AgeGroup {
        switch self {
        case .child:   return .child
        case .preteen: return .preteen
        case .teen:    return .teen
        case .adult:   return .adult
        }
    }
}

// MARK: - Supernova Intent

struct SimulateSupernovaIntent: AppIntent {
    static var title: LocalizedStringResource = "Simulate a Supernova"
    static var description = IntentDescription(
        "Triggers a stunning supernova explosion animation in Aether.",
        categoryName: "Simulations"
    )

    static var openAppWhenRun: Bool = true

    @Parameter(title: "Age Group", description: "Who is watching?", default: .teen)
    var ageGroup: AgeGroupEntity

    @Parameter(title: "Object Type", description: "What kind of star explodes?", default: "Massive Star")
    var objectType: String

    static var parameterSummary: some ParameterSummary {
        Summary("Simulate a supernova for \(\.$ageGroup)")
    }

    @MainActor
    func perform() async throws -> some IntentResult {
        ConceptsManager.shared.supernovaAgeGroup = ageGroup.toAgeGroup()
        ConceptsManager.shared.isShowingSupernova = true
        return .result()
    }
}

// MARK: - Open Spacetime Lab Intent

struct OpenSpacetimeLabIntent: AppIntent {
    static var title: LocalizedStringResource = "Open Spacetime Lab"
    static var description = IntentDescription(
        "Opens the interactive Spacetime Lab in Aether.",
        categoryName: "Navigation"
    )
    static var openAppWhenRun: Bool = true

    @MainActor
    func perform() async throws -> some IntentResult {
        return .result()
    }
}

// MARK: - Shortcuts Provider

struct AetherShortcutsProvider: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: SimulateSupernovaIntent(),
            phrases: [
                "Simulate a Supernova in \(.applicationName)",
                "Show a supernova in \(.applicationName)",
                "Trigger supernova in \(.applicationName)",
                "Explode a star in \(.applicationName)"
            ],
            shortTitle: "Simulate Supernova",
            systemImageName: "sparkles"
        )

        AppShortcut(
            intent: OpenSpacetimeLabIntent(),
            phrases: [
                "Open Spacetime Lab in \(.applicationName)",
                "Open the physics lab in \(.applicationName)"
            ],
            shortTitle: "Open Lab",
            systemImageName: "scope"
        )
    }
}
