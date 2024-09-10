//
//  LayerInputEntity_V23.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum LayerInputEntity_V23: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V23
    public typealias PreviousInstance = Self.LayerInputEntity
    public typealias LayerInputDataEntity = LayerInputDataEntity_V23.LayerInputDataEntity
    public typealias CanvasNodeEntity = CanvasNodeEntity_V23.CanvasNodeEntity
    // MARK: - end

    public struct LayerInputEntity: Equatable, Codable, Sendable {
        public var packedData: LayerInputDataEntity
        public var unpackedData: [LayerInputDataEntity]
        
        public init(packedData: LayerInputDataEntity,
                    unpackedData: [LayerInputDataEntity]) {
            self.packedData = packedData
            self.unpackedData = unpackedData
        }
    }
}

extension LayerInputEntity_V23.LayerInputEntity: StitchVersionedCodable {
    // TODO: correct post version 23 to use LayerInputEntity instead of LayerInputDataEntity
    public init(previousInstance: LayerInputDataEntity_V23.PreviousInstance) {
        self.init(packedData: .init(previousInstance: previousInstance),
                  unpackedData: [])
    }
    
    // TODO: remove after version 23
    public init(inputPort: NodeConnectionType_V23.NodeConnectionType) {
        self.init(packedData: .init(inputPort: inputPort),
                  unpackedData: [])
    }
}
