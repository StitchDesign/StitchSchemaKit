//
//  DeviceAppearance_V33.swift
//  StitchSchemaKit
//
//  Created by Christian J Clampitt on 10/17/24.
//

import Foundation

public enum DeviceAppearance_V33: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V33
    public typealias PreviousInstance = DeviceAppearance_V32.DeviceAppearance
    // MARK: - endif

    public enum DeviceAppearance: String, CaseIterable, Hashable {
        case system = "System",
             light = "Light",
             dark = "Dark"
    }
}

extension DeviceAppearance_V33.DeviceAppearance: StitchVersionedCodable {
    public init(previousInstance: DeviceAppearance_V33.PreviousInstance) {
        switch previousInstance {
        case .system:
            self = .system
        case .light:
            self = .light
        case .dark:
            self = .dark
        }
    }
}
