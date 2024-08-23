//
//  LayerInputKeyPathType_V24.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum LayerInputKeyPathType_V24: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V24
    public typealias UnpackedPortType = UnpackedPortType_V24.UnpackedPortType
    
    // TODO: change previous instance version
    public typealias PreviousInstance = Self.LayerInputKeyPathType
    // MARK: - endif
    
    public enum LayerInputKeyPathType: Hashable, Codable {
        case packed
        case unpacked(UnpackedPortType)
    }
}

extension LayerInputKeyPathType_V24.LayerInputKeyPathType: StitchVersionedCodable {
    public init(previousInstance: LayerInputKeyPathType_V24.PreviousInstance) {
        // TODO: fix migration here
        fatalError()
    }
}
