//
//  StitchMapType.swift
//  
//
//  Created by Nicholas Arner on 3/25/24.
//

import Foundation
import MapKit

public enum StitchMapType_V24: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V24
    public typealias PreviousInstance = StitchMapType_V23.StitchMapType
    
    // MARK: - endif
    public enum StitchMapType: String, Equatable, Codable, CaseIterable, Sendable {
        case standard = "Standard",
             satellite = "Satellite",
             hybrid = "Hybrid",
             hybridFlyover = "Hybrid Flyover",
             satelliteFlyover = "Satellite Flyover",
             mutedStandard = "Muted Standard"
    }
}

extension StitchMapType_V24.StitchMapType: StitchVersionedCodable {
    public init(previousInstance: StitchMapType_V24.PreviousInstance) {
        switch previousInstance {
        case .standard:
            self = .standard
        case .satellite:
            self = .satellite
        case .hybrid:
            self = .hybrid
        case .hybridFlyover:
            self = .hybridFlyover
        case .satelliteFlyover:
            self = .satelliteFlyover
        case .mutedStandard:
            self = .mutedStandard
        }
    }
}
