//
//  MobileHapticStyle_V13.swift
//  StitchSchemaKit
//
//  Created by Nicholas Arner on 4/4/24.
//

import Foundation

public enum MobileHapticStyle_V13: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V13
    public typealias PreviousInstance = MobileHapticStyle_V12.MobileHapticStyle

    // MARK: - endif
    public enum MobileHapticStyle: String, Equatable, Codable, CaseIterable, Sendable {
        case light = "Light",
             medium = "Medium",
             heavy = "Heavy"
    }
}


extension MobileHapticStyle_V13.MobileHapticStyle: StitchVersionedCodable {
    public init(previousInstance: MobileHapticStyle_V13.PreviousInstance) {
        switch previousInstance {
        case .light:
            self = .light
        case .medium:
            self = .medium
        case .heavy:
            self = .heavy
        }
    }
}
