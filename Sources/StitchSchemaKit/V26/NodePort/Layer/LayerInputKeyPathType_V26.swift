//
//  LayerInputKeyPathType_V26.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum LayerInputKeyPathType_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = LayerInputKeyPathType_V25.LayerInputKeyPathType
    // MARK: - endif
    
    public enum LayerInputKeyPathType: Hashable, Codable {
        case packed
        case unpacked(UnpackedPortType_V26.UnpackedPortType)
    }
}

extension LayerInputKeyPathType_V26.LayerInputKeyPathType: StitchVersionedCodable {
    public init(previousInstance: LayerInputKeyPathType_V26.PreviousInstance) {
        switch previousInstance {
        case .packed:
            self = .packed
        case .unpacked(let unpackedPortType):
            self = .unpacked(.init(previousInstance: unpackedPortType))
        }
    }
}
