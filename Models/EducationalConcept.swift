//
//  EducationalConcept.swift
//  Aether
//
//  Created by VED PATEL on 03/02/26.
//


import SwiftData
import SwiftUI
import Foundation

// MARK: - EducationalConcept

@Model
final class EducationalConcept {
    var id: UUID
    var title: String
    var categoryRaw: String
    var animationTypeRaw: String
    var isFeatured: Bool
    var viewCount: Int

    // Keyed by AgeGroup.rawValue
    var descChild: String
    var descPreteen: String
    var descTeen: String
    var descAdult: String

    init(id: UUID = UUID(),
         title: String,
         category: ConceptCategory,
         animationType: ConceptAnimation,
         isFeatured: Bool = false,
         descChild: String,
         descPreteen: String,
         descTeen: String,
         descAdult: String) {
        self.id = id
        self.title = title
        self.categoryRaw = category.rawValue
        self.animationTypeRaw = animationType.rawValue
        self.isFeatured = isFeatured
        self.viewCount = 0
        self.descChild = descChild
        self.descPreteen = descPreteen
        self.descTeen = descTeen
        self.descAdult = descAdult
    }

    var category: ConceptCategory { ConceptCategory(rawValue: categoryRaw) ?? .cosmology }
    var animationType: ConceptAnimation { ConceptAnimation(rawValue: animationTypeRaw) ?? .nebulaCloud }

    func description(for ageGroup: AgeGroup) -> String {
        switch ageGroup {
        case .child:   return descChild
        case .preteen: return descPreteen
        case .teen:    return descTeen
        case .adult:   return descAdult
        }
    }
}

// MARK: - ConceptCategory

enum ConceptCategory: String, Codable, CaseIterable, Identifiable {
    case blackHoles        = "Black Holes"
    case quantumMechanics  = "Quantum Mechanics"
    case cosmology         = "Cosmology"
    case stellarPhysics    = "Stellar Physics"
    case spacetime         = "Spacetime"
    case particles         = "Particles"

    var id: String { rawValue }

    var color: Color {
        switch self {
        case .blackHoles:       return Color(red: 0.55, green: 0.05, blue: 1.0)
        case .quantumMechanics: return Color(red: 0.05, green: 0.75, blue: 1.0)
        case .cosmology:        return Color(red: 1.0,  green: 0.38, blue: 0.08)
        case .stellarPhysics:   return Color(red: 1.0,  green: 0.88, blue: 0.15)
        case .spacetime:        return Color(red: 0.15, green: 1.0,  blue: 0.55)
        case .particles:        return Color(red: 1.0,  green: 0.15, blue: 0.45)
        }
    }

    var accentColor: Color { color.opacity(0.3) }

    var icon: String {
        switch self {
        case .blackHoles:       return "circle.fill"
        case .quantumMechanics: return "atom"
        case .cosmology:        return "sparkles"
        case .stellarPhysics:   return "sun.max.fill"
        case .spacetime:        return "grid"
        case .particles:        return "dot.radiowaves.left.and.right"
        }
    }
}

// MARK: - ConceptAnimation

enum ConceptAnimation: String, Codable, CaseIterable {
    case pulsarStar
    case blackHoleVortex
    case quantumOrbitals
    case nebulaCloud
    case wormhole
    case supernovaExplosion
    case gravitationalWaves
    case cosmicString
}

// MARK: - SavedConcept

@Model
final class SavedConcept {
    var conceptID: UUID
    var savedAt: Date
    var title: String
    var categoryRaw: String
    var animationTypeRaw: String

    init(concept: EducationalConcept) {
        self.conceptID = concept.id
        self.savedAt = Date()
        self.title = concept.title
        self.categoryRaw = concept.categoryRaw
        self.animationTypeRaw = concept.animationTypeRaw
    }

    var category: ConceptCategory { ConceptCategory(rawValue: categoryRaw) ?? .cosmology }
    var animationType: ConceptAnimation { ConceptAnimation(rawValue: animationTypeRaw) ?? .nebulaCloud }
}
