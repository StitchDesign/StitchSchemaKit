//
//  LayerInputKeyPathType_V29.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum LayerInputKeyPathType_V29: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V29
    public typealias PreviousInstance = LayerInputKeyPathType_V28.LayerInputKeyPathType
    // MARK: - endif
    
    public enum LayerInputKeyPathType: Hashable, Codable {
        case packed
        case unpacked(UnpackedPortType_V29.UnpackedPortType)
    }
}

extension LayerInputKeyPathType_V29.LayerInputKeyPathType: StitchVersionedCodable {
    public init(previousInstance: LayerInputKeyPathType_V29.PreviousInstance) {
        switch previousInstance {
        case .packed:
            self = .packed
        case .unpacked(let unpackedPortType):
            self = .unpacked(.init(previousInstance: unpackedPortType))
        }
    }
}
