//
//  UnpackedPortType_V30.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum UnpackedPortType_V30: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V30
    public typealias PreviousInstance = UnpackedPortType_V29.UnpackedPortType
    // MARK: - endif
    
    public enum UnpackedPortType: Int, Hashable, Codable, CaseIterable {
        case port0 = 0
        case port1 = 1
        case port2 = 2
        case port3 = 3
        case port4 = 4
        case port5 = 5
        case port6 = 6
        case port7 = 7
        case port8 = 8
    }
}

extension UnpackedPortType_V30.UnpackedPortType: StitchVersionedCodable {
    public init(previousInstance: UnpackedPortType_V30.PreviousInstance) {
        switch previousInstance {
        case .port0:
            self = .port0
        case .port1:
            self = .port1
        case .port2:
            self = .port2
        case .port3:
            self = .port3
        case .port4:
            self = .port4
        case .port5:
            self = .port5
        case .port6:
            self = .port6
        case .port7:
            self = .port7
        case .port8:
            self = .port8
        }
    }
}
