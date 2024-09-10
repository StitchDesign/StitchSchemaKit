//
//  LightType_V1.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum LightType_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.LightType
    // MARK: - endif
    
    public enum LightType: String, CaseIterable {
        case ambient, omni, directional,
             spot, IES, probe, area
    }

}

extension LightType_V1.LightType: StitchVersionedCodable {
    public init(previousInstance: LightType_V1.PreviousInstance) {
        fatalError()
    }
}
