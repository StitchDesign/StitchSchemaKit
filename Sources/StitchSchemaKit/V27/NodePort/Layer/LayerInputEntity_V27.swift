//
//  LayerInputEntity_V27.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum LayerInputEntity_V27: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V27
    public typealias PreviousInstance = LayerInputEntity_V26.LayerInputEntity
    public typealias LayerInputDataEntity = LayerInputDataEntity_V27.LayerInputDataEntity
    public typealias CanvasNodeEntity = CanvasNodeEntity_V27.CanvasNodeEntity
    // MARK: - end

    public struct LayerInputEntity: Hashable, Codable, Sendable {
        public var packedData: LayerInputDataEntity
        public var unpackedData: [LayerInputDataEntity]
        
        public init(packedData: LayerInputDataEntity,
                    unpackedData: [LayerInputDataEntity]) {
            self.packedData = packedData
            self.unpackedData = unpackedData
        }
    
        /// Used for migrations when a port hasn't been created yet.
        static func createEmpty() -> LayerInputEntity {
            .init(packedData: .init(inputPort: .values([])),
                  unpackedData: .init())
        }
    }
}

extension LayerInputEntity_V27.LayerInputEntity: StitchVersionedCodable {
    public init(previousInstance: LayerInputEntity_V27.PreviousInstance) {
        self.init(packedData: .init(previousInstance: previousInstance.packedData),
                  unpackedData: .init(previousElements: previousInstance.unpackedData))
    }
}
