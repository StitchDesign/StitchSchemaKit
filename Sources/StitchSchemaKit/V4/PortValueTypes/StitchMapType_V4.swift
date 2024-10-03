//
//  StitchMapType.swift
//  
//
//  Created by Nicholas Arner on 3/25/24.
//

import Foundation
import MapKit

public enum StitchMapType_V4: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V4
    public typealias PreviousInstance = Self.StitchMapType
    
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

extension StitchMapType_V4.StitchMapType: StitchVersionedCodable {
    public init(previousInstance: StitchMapType_V4.PreviousInstance) {
        fatalError()
    }
}
