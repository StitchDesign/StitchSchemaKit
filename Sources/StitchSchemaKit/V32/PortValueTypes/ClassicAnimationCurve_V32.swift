//
//  ClassicAnimationCurve.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum ClassicAnimationCurve_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = ClassicAnimationCurve_V31.ClassicAnimationCurve
    // MARK: - endif
 

    public enum ClassicAnimationCurve: String, CaseIterable, Hashable {
        case linear,
             
             // quadratic
             quadraticIn,
             quadraticOut,
             quadraticInOut,
             
             // sine
             sinusoidalIn,
             sinusoidalOut,
             sinusoidalInOut,
             
             // exponent
             exponentialIn,
             exponentialOut,
             exponentialInOut
    }

}

extension ClassicAnimationCurve_V32.ClassicAnimationCurve: StitchVersionedCodable {
    public init(previousInstance: ClassicAnimationCurve_V32.PreviousInstance) {
        switch previousInstance {
            
        case .linear:
            self = .linear
        case .quadraticIn:
            self = .quadraticIn
        case .quadraticOut:
            self = .quadraticOut
        case .quadraticInOut:
            self = .quadraticInOut
        case .sinusoidalIn:
            self = .sinusoidalIn
        case .sinusoidalOut:
            self = .sinusoidalOut
        case .sinusoidalInOut:
            self = .sinusoidalInOut
        case .exponentialIn:
            self = .exponentialIn
        case .exponentialOut:
            self = .exponentialOut
        case .exponentialInOut:
            self = .exponentialInOut
        }
    }
}
