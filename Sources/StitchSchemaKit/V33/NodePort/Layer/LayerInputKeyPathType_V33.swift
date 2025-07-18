//
//  LayerInputKeyPathType_V33.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum LayerInputKeyPathType_V33: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V33
    public typealias PreviousInstance = LayerInputKeyPathType_V32.LayerInputKeyPathType
    // MARK: - endif
    
    public enum LayerInputKeyPathType: Hashable, Codable {
        case packed
        case unpacked(UnpackedPortType_V33.UnpackedPortType)
    }
}

extension LayerInputKeyPathType_V33.LayerInputKeyPathType: StitchVersionedCodable {
    public init(previousInstance: LayerInputKeyPathType_V33.PreviousInstance) {
        switch previousInstance {
        case .packed:
            self = .packed
        case .unpacked(let unpackedPortType):
            self = .unpacked(.init(previousInstance: unpackedPortType))
        }
    }
}
