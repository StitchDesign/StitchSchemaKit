//
//  ClassicAnimationCurve.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum ClassicAnimationCurve_V30: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V30
    public typealias PreviousInstance = ClassicAnimationCurve_V29.ClassicAnimationCurve
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

extension ClassicAnimationCurve_V30.ClassicAnimationCurve: StitchVersionedCodable {
    public init(previousInstance: ClassicAnimationCurve_V30.PreviousInstance) {
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
