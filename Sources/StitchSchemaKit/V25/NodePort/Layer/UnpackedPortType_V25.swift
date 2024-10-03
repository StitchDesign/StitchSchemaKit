//
//  UnpackedPortType_V25.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum UnpackedPortType_V25: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V25
    public typealias PreviousInstance = UnpackedPortType_V24.UnpackedPortType
    // MARK: - endif
    
    public enum UnpackedPortType: Int, Hashable, Codable, CaseIterable {
        case port0 = 0
        case port1 = 1
        case port2 = 2
        case port3 = 3
    }
}

extension UnpackedPortType_V25.UnpackedPortType: StitchVersionedCodable {
    public init(previousInstance: UnpackedPortType_V25.PreviousInstance) {
        switch previousInstance {
        case .port0:
            self = .port0
        case .port1:
            self = .port1
        case .port2:
            self = .port2
        case .port3:
            self = .port3
        }
    }
}
