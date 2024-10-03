//
//  LayerInputEntity_V25.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum LayerInputEntity_V25: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V25
    public typealias PreviousInstance = LayerInputEntity_V24.LayerInputEntity
    public typealias LayerInputDataEntity = LayerInputDataEntity_V25.LayerInputDataEntity
    public typealias CanvasNodeEntity = CanvasNodeEntity_V25.CanvasNodeEntity
    // MARK: - end

    public struct LayerInputEntity: Equatable, Codable, Sendable {
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

extension LayerInputEntity_V25.LayerInputEntity: StitchVersionedCodable {
    public init(previousInstance: LayerInputEntity_V25.PreviousInstance) {
        self.init(packedData: .init(previousInstance: previousInstance.packedData),
                  unpackedData: .init(previousElements: previousInstance.unpackedData))
    }
}
