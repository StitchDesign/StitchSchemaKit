//
//  LayerInputEntity_V31.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum LayerInputEntity_V31: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V31
    public typealias PreviousInstance = LayerInputEntity_V30.LayerInputEntity
    public typealias LayerInputDataEntity = LayerInputDataEntity_V31.LayerInputDataEntity
    public typealias CanvasNodeEntity = CanvasNodeEntity_V31.CanvasNodeEntity
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
        public static func createEmpty() -> LayerInputEntity {
            .init(packedData: .init(inputPort: .values([])),
                  unpackedData: .init())
        }
    }
}

extension LayerInputEntity_V31.LayerInputEntity: StitchVersionedCodable {
    public init(previousInstance: LayerInputEntity_V31.PreviousInstance) {
        self.init(packedData: .init(previousInstance: previousInstance.packedData),
                  unpackedData: .init(previousElements: previousInstance.unpackedData))
    }
}
