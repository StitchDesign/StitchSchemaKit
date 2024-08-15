//
//  LayerInputKeyPathType_V23.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum LayerInputKeyPathType_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V23
    public typealias UnpackedPortType = UnpackedPortType_V23.UnpackedPortType
    
    // TODO: change previous instance version
    public typealias PreviousInstance = Self.LayerInputKeyPathType
    // MARK: - endif
    
    public enum LayerInputKeyPathType: Hashable, Codable {
        case packed
        case unpacked(UnpackedPortType)
    }
}

extension LayerInputKeyPathType_V23.LayerInputKeyPathType: StitchVersionedCodable {
    public init(previousInstance: LayerInputKeyPathType_V23.PreviousInstance) {
        // TODO: fix migration here
        fatalError()
    }
}
