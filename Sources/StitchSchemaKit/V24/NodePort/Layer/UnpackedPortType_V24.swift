//
//  UnpackedPortType_V24.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum UnpackedPortType_V24: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V24
    public typealias PreviousInstance = UnpackedPortType_V23.UnpackedPortType
    // MARK: - endif
    
    public enum UnpackedPortType: Int, Hashable, Codable, CaseIterable {
        case port0 = 0
        case port1 = 1
        case port2 = 2
        case port3 = 3
    }
}

extension UnpackedPortType_V24.UnpackedPortType: StitchVersionedCodable {
    public init(previousInstance: UnpackedPortType_V24.PreviousInstance) {
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
