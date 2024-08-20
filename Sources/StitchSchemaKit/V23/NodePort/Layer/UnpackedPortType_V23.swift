//
//  UnpackedPortType_V23.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum UnpackedPortType_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V23
    
    // TODO: change previous instance version
    public typealias PreviousInstance = Self.UnpackedPortType
    // MARK: - endif
    
    public enum UnpackedPortType: Int, Hashable, Codable, CaseIterable {
        case port0 = 0
        case port1 = 1
        case port2 = 2
        case port3 = 3
    }
}

extension UnpackedPortType_V23.UnpackedPortType: StitchVersionedCodable {
    public init(previousInstance: UnpackedPortType_V23.PreviousInstance) {
        // TODO: fix migration here
        fatalError()
    }
}
