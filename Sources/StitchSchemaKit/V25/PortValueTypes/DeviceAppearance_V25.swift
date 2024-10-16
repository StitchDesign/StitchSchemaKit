//
//  File.swift
//  StitchSchemaKit
//
//  Created by Christian J Clampitt on 10/16/24.
//

import Foundation

public enum DeviceAppearance_V25: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V25
    public typealias PreviousInstance = Self.DeviceAppearance
    // MARK: - endif
  
    public enum DeviceAppearance: String, CaseIterable, Hashable {
        case system = "System",
             light = "Light",
             dark = "Dark"
    }
}

// TODO: fix after version 25
extension DeviceAppearance_V25.DeviceAppearance: StitchVersionedCodable {
    public init(previousInstance: DeviceAppearance_V25.PreviousInstance) {
        fatalError()
    }
}

