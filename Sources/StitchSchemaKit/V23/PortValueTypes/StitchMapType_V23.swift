//
//  StitchMapType.swift
//  
//
//  Created by Nicholas Arner on 3/25/24.
//

import Foundation
import MapKit

public enum StitchMapType_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V23
    public typealias PreviousInstance = StitchMapType_V22.StitchMapType
    
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

extension StitchMapType_V23.StitchMapType: StitchVersionedCodable {
    public init(previousInstance: StitchMapType_V23.PreviousInstance) {
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
