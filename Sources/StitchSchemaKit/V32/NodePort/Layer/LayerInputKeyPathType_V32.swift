//
//  LayerInputKeyPathType_V32.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum LayerInputKeyPathType_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = LayerInputKeyPathType_V31.LayerInputKeyPathType
    // MARK: - endif
    
    public enum LayerInputKeyPathType: Hashable, Codable {
        case packed
        case unpacked(UnpackedPortType_V32.UnpackedPortType)
    }
}

extension LayerInputKeyPathType_V32.LayerInputKeyPathType: StitchVersionedCodable {
    public init(previousInstance: LayerInputKeyPathType_V32.PreviousInstance) {
        switch previousInstance {
        case .packed:
            self = .packed
        case .unpacked(let unpackedPortType):
            self = .unpacked(.init(previousInstance: unpackedPortType))
        }
    }
}
