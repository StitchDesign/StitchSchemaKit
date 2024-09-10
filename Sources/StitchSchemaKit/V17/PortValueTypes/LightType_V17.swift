//
//  LightType_V17.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum LightType_V17: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V17
    public typealias PreviousInstance = LightType_V16.LightType
    // MARK: - endif
    
    public enum LightType: String, CaseIterable {
        case ambient, omni, directional,
             spot, IES, probe, area
    }

}


extension LightType_V17.LightType: StitchVersionedCodable {
    public init(previousInstance: LightType_V17.PreviousInstance) {
        switch previousInstance {
            
        case .ambient:
            self = .ambient
        case .omni:
            self = .omni
        case .directional:
            self = .directional
        case .spot:
            self = .spot
        case .IES:
            self = .IES
        case .probe:
            self = .probe
        case .area:
            self = .area
        }
    }
}
