//
//  DeviceAppearance_V26.swift
//  StitchSchemaKit
//
//  Created by Christian J Clampitt on 10/17/24.
//

import Foundation

public enum DeviceAppearance_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = Self.DeviceAppearance
    // MARK: - endif

    public enum DeviceAppearance: String, CaseIterable, Hashable {
        case system = "System",
             light = "Light",
             dark = "Dark"
    }
}

// TODO: fix after version 26
extension DeviceAppearance_V26.DeviceAppearance: StitchVersionedCodable {
    public init(previousInstance: DeviceAppearance_V26.PreviousInstance) {
        fatalError()
    }
}
