//
//  File.swift
//  
//
//  Created by Nicholas Arner on 3/25/24.
//

import Foundation
import MapKit

public enum StitchMapType_V4: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V4
    public typealias PreviousInstance = Self
    
    // MARK: - endif
    public enum StitchMapType: String, Codable, Equatable {
        case standard = "Standard",
             satellite = "Satellite",
             hybrid = "Hybrid",
             hybridFlyover = "Hybrid Flyover",
             satelliteFlyover = "Satellite Flyover",
             mutedStandard = "Muted Standard"
        
        var toMKMapType: MKMapType {
            switch self {
            case .standard:
                return .standard
            case .satellite:
                return .satellite
            case .hybrid:
                return .hybrid
            case .hybridFlyover:
                return .hybridFlyover
            case .satelliteFlyover:
                 return .satelliteFlyover
            case .mutedStandard:
                return .mutedStandard
            }
        }
    }
}
