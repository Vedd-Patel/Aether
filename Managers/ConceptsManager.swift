//
//  ConceptsManager.swift
//  Aether
//
//  Created by VED PATEL on 04/02/26.
//


import SwiftData
import SwiftUI
import Foundation

@Observable
final class ConceptsManager {
    static let shared = ConceptsManager()

    var selectedConcept: EducationalConcept?
    var isShowingSupernova: Bool = false
    var supernovaAgeGroup: AgeGroup = .teen
    var supernovaTriggered: Bool = false

    private init() {}

    // MARK: - Seed

    static func seedIfNeeded(context: ModelContext) {
        let descriptor = FetchDescriptor<EducationalConcept>()
        let count = (try? context.fetchCount(descriptor)) ?? 0
        guard count == 0 else { return }
        buildSeedConcepts().forEach { context.insert($0) }
        try? context.save()
    }

    // MARK: - Seed Data

    static func buildSeedConcepts() -> [EducationalConcept] {
        [
            EducationalConcept(
                title: "Black Holes",
                category: .blackHoles,
                animationType: .blackHoleVortex,
                isFeatured: true,
                descChild: "A black hole is like a cosmic vacuum cleaner! It's a place where gravity is SO strong that even light can't escape. Imagine a giant funnel that swallows everything nearby!",
                descPreteen: "Black holes form when massive stars collapse under their own gravity. Their pull is so intense that nothing—not even light—can escape past their event horizon, the point of no return.",
                descTeen: "Black holes are regions where spacetime curvature becomes extreme. The Schwarzschild radius r_s = 2GM/c² defines the event horizon. Time dilation near the horizon approaches infinity from an external observer's frame.",
                descAdult: "Black holes are solutions to Einstein's field equations G_μν + Λg_μν = 8πT_μν where curvature becomes singular. The Kerr metric describes rotating holes, exhibiting ergospheres and frame-dragging. Hawking radiation T_H = ℏc³/(8πGMk_B) causes slow evaporation."
            ),
            EducationalConcept(
                title: "Neutron Stars & Pulsars",
                category: .stellarPhysics,
                animationType: .pulsarStar,
                isFeatured: true,
                descChild: "Neutron stars are tiny but incredibly heavy! One teaspoon would weigh a billion tons. They spin really fast and shoot beams of light like a cosmic lighthouse—that's a pulsar!",
                descPreteen: "When a giant star explodes in a supernova, its core collapses into a neutron star—just 20km wide but heavier than our Sun. Pulsars are spinning neutron stars that beam radiation like a lighthouse.",
                descTeen: "Neutron stars reach densities of ~10¹⁷ kg/m³, with neutron degeneracy pressure halting collapse. Millisecond pulsars spin at ~700 Hz and serve as galactic atomic clocks for gravitational wave timing arrays.",
                descAdult: "Neutron star interiors may host quark-gluon plasma or strange quark matter; the equation of state remains poorly constrained. NS-NS mergers (GW170817) produce r-process nucleosynthesis in kilonovae, explaining heavy element abundances. Shapiro delay measurements constrain M-R relations."
            ),
            EducationalConcept(
                title: "Quantum Superposition",
                category: .quantumMechanics,
                animationType: .quantumOrbitals,
                descChild: "Imagine a magic coin that is BOTH heads AND tails at the same time—until you look at it! Tiny particles exist in multiple states at once until someone observes them. Mind-blowing!",
                descPreteen: "In quantum mechanics, particles exist in multiple states simultaneously until measured. Schrödinger's cat thought experiment shows a cat that's both alive and dead. Observation 'collapses' all possibilities into one outcome.",
                descTeen: "Superposition is described by Ψ = α|0⟩ + β|1⟩ where |α|²+|β|²=1. The Copenhagen interpretation holds that measurement collapses Ψ into an eigenstate. This is the foundation of quantum computing, where qubits process multiple states in parallel.",
                descAdult: "Superposition formalizes within Hilbert space. Many-worlds posits universal wave function branching without collapse. Decoherence explains apparent collapse via environmental entanglement. Bell's theorem (CHSH |S| ≤ 2) conclusively rules out local hidden variables. Loop holes closed by loophole-free tests (Hensen 2015)."
            ),
            EducationalConcept(
                title: "The Big Bang",
                category: .cosmology,
                animationType: .nebulaCloud,
                isFeatured: true,
                descChild: "Everything in the universe—all stars, planets, and galaxies—came from one tiny, super-hot point that exploded 13.8 billion years ago. The universe has been growing ever since!",
                descPreteen: "The Big Bang was the birth of our universe. In a fraction of a second, all matter, energy, space, and time exploded from a singularity. The universe cooled and expanded, forming hydrogen, then stars, then galaxies.",
                descTeen: "Cosmic inflation at t=10⁻³⁶s expanded the universe by ~60 e-folds, solving the horizon and flatness problems. Recombination at z≈1100 released the CMB. Hubble's law v=H₀d with H₀≈67.4 km/s/Mpc confirms ongoing expansion.",
                descAdult: "Inflationary cosmology (Guth, Linde) produces scale-invariant perturbations P(k)∝kⁿˢ with nₛ≈0.965 (Planck 2018). The CMB anisotropies δT/T~10⁻⁵ encode the primordial power spectrum. Ω_total≈1.000 confirms spatial flatness. The S8 tension between CMB and weak lensing surveys remains unresolved."
            ),
            EducationalConcept(
                title: "Wormholes",
                category: .spacetime,
                animationType: .wormhole,
                descChild: "A wormhole is like a magic tunnel through space! Instead of traveling a huge distance, you pop into one end and instantly appear far away—like a cosmic shortcut through the universe!",
                descPreteen: "Wormholes are theoretical shortcuts through spacetime connecting distant points. Einstein and Rosen described them mathematically. They'd need exotic matter with negative energy to stay open and allow travel.",
                descTeen: "Einstein-Rosen bridges are solutions to GR field equations. Morris-Thorne traversable wormholes require exotic matter violating the Null Energy Condition. The Casimir effect demonstrates quantum negative energy. Time-displaced mouths could create closed timelike curves.",
                descAdult: "ER=EPR conjecture (Maldacena-Susskind 2013) links Einstein-Rosen bridges to EPR entanglement, suggesting spacetime connectivity emerges from quantum entanglement. Traversable wormholes require ⟨T_μν k^μ k^ν⟩ < 0. Quantum interest conjecture bounds negative energy pulse integrals. ABJM and SYK models explore holographic wormholes."
            ),
            EducationalConcept(
                title: "Supernova Explosions",
                category: .stellarPhysics,
                animationType: .supernovaExplosion,
                isFeatured: true,
                descChild: "A supernova is the BIGGEST explosion in the universe! When a giant star runs out of fuel, it collapses and then BOOM—it outshines billions of suns. It creates all the atoms in your body!",
                descPreteen: "When massive stars (8+ solar masses) exhaust their fuel, their cores collapse in milliseconds, releasing more energy than the Sun emits in its lifetime. The explosion scatters gold, iron, and uranium across space.",
                descTeen: "Type II SNe occur when the iron core exceeds ~1.4M☉ (Chandrasekhar limit). Core collapse to nuclear density (10¹⁴ g/cm³) bounces, driving a shock. 99% of energy (~3×10⁴⁶J) releases as neutrinos. Explosive nucleosynthesis produces elements up to uranium.",
                descAdult: "Core-collapse SN energetics: E_grav≈3×10⁴⁶J, ~1% coupling to ejecta. Shock revival via SASI and neutrino-driven convection is computationally intensive (multi-D GRMHD). Type Ia SNe (thermonuclear, Chandrasekhar or double-degenerate) are standardizable candles that revealed dark energy. SN 1987A neutrino burst (23 events, IMB+Kamiokande) confirmed the collapse picture."
            ),
            EducationalConcept(
                title: "Gravitational Waves",
                category: .spacetime,
                animationType: .gravitationalWaves,
                descChild: "When two black holes crash into each other far away, they create ripples through all of space—like ripples on a pond. These ripples squeeze and stretch everything as they pass, even you!",
                descPreteen: "Gravitational waves are ripples in spacetime caused by violent cosmic events. LIGO first detected them in 2015 from two merging black holes. They travel at light speed and stretch space by less than the width of a proton.",
                descTeen: "GWs are metric perturbations h_μν on flat spacetime. Strain h=ΔL/L≈10⁻²¹. LIGO's 4km arms achieve sensitivity using Fabry-Pérot cavities, power recycling, and squeezed vacuum states. GW150914: 36+29M☉ merger at 410 Mpc.",
                descAdult: "GW memory effect produces permanent spacetime deformation detectable by PTAs. Nano-Hertz GW background evidence (2023: NANOGrav, EPTA, PPTA, CPTA) suggests SMBH mergers. LISA will probe mHz band from EMRI and SMBH systems. Post-Newtonian PN3.5 waveforms and NR simulations (SXS catalog) enable parameter estimation."
            ),
            EducationalConcept(
                title: "Dark Matter & Energy",
                category: .cosmology,
                animationType: .cosmicString,
                descChild: "Most of the universe is invisible! Dark matter is like invisible glue holding galaxies together, and dark energy is a mysterious force pushing the universe apart faster and faster every day!",
                descPreteen: "Dark matter (27% of universe) is invisible but has gravity—it holds galaxies together. Dark energy (68%) is a mysterious force accelerating cosmic expansion. Only 5% of the universe is ordinary visible matter!",
                descTeen: "DM evidence: flat galactic rotation curves, gravitational lensing, CMB power spectrum. WIMP candidates interact only weakly and gravitationally. Dark energy equation of state w≈−1 (cosmological constant). Ω_m=0.315, Ω_Λ=0.685 (Planck 2018).",
                descAdult: "WIMPs, axions, PBHs, and sterile neutrinos are viable DM candidates. Direct detection bounds: σ_SI < 10⁻⁴⁷ cm² (XENONnT). The cosmological constant problem: ρ_vac (observed) is 10¹²⁰× smaller than QFT predictions. Quintessence allows evolving w(z). The S8 tension (σ₈√Ω_m/0.3) between primary CMB and lensing surveys challenges ΛCDM."
            )
        ]
    }
}
