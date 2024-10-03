//
//  MobileHapticStyle_V14.swift
//  StitchSchemaKit
//
//  Created by Nicholas Arner on 4/4/24.
//

import Foundation

public enum MobileHapticStyle_V14: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V14
    public typealias PreviousInstance = MobileHapticStyle_V13.MobileHapticStyle

    // MARK: - endif
    public enum MobileHapticStyle: String, Equatable, Codable, CaseIterable, Sendable {
        case light = "Light",
             medium = "Medium",
             heavy = "Heavy"
    }
}


extension MobileHapticStyle_V14.MobileHapticStyle: StitchVersionedCodable {
    public init(previousInstance: MobileHapticStyle_V14.PreviousInstance) {
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
