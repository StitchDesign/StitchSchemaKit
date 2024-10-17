//
//  UnpackedPortType_V26.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum UnpackedPortType_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = UnpackedPortType_V25.UnpackedPortType
    // MARK: - endif
    
    public enum UnpackedPortType: Int, Hashable, Codable, CaseIterable {
        case port0 = 0
        case port1 = 1
        case port2 = 2
        case port3 = 3
    }
}

extension UnpackedPortType_V26.UnpackedPortType: StitchVersionedCodable {
    public init(previousInstance: UnpackedPortType_V26.PreviousInstance) {
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
