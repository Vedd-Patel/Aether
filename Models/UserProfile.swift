//
//  UserProfile.swift
//  Aether
//
//  Created by VED PATEL on 27/01/26.
//


import SwiftData
import Foundation

@Model
final class UserProfile {
    var ageGroup: AgeGroup
    var interests: [String]
    var hasCompletedOnboarding: Bool
    var createdAt: Date

    init(ageGroup: AgeGroup = .teen,
         interests: [String] = [],
         hasCompletedOnboarding: Bool = false) {
        self.ageGroup = ageGroup
        self.interests = interests
        self.hasCompletedOnboarding = hasCompletedOnboarding
        self.createdAt = Date()
    }
}

// MARK: - AgeGroup

enum AgeGroup: String, Codable, CaseIterable, Identifiable {
    case child   = "5–8"
    case preteen = "9–13"
    case teen    = "14–18"
    case adult   = "Adult"

    var id: String { rawValue }

    var displayName: String { rawValue }

    var emoji: String {
        switch self {
        case .child:   return "🌟"
        case .preteen: return "🔭"
        case .teen:    return "⚡️"
        case .adult:   return "🪐"
        }
    }

    var complexityLabel: String {
        switch self {
        case .child:   return "Simple & Fun"
        case .preteen: return "Curious Explorer"
        case .teen:    return "Deep Diver"
        case .adult:   return "Expert Level"
        }
    }

    var readingLevel: Int {
        switch self {
        case .child:   return 1
        case .preteen: return 2
        case .teen:    return 3
        case .adult:   return 4
        }
    }

    var gradient: [String] {
        switch self {
        case .child:   return ["#FFD700", "#FF8C00"]
        case .preteen: return ["#00BFFF", "#7B2FBE"]
        case .teen:    return ["#FF2D55", "#FF6B35"]
        case .adult:   return ["#5AC8FA", "#4CD964"]
        }
    }
}
