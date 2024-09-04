//
//  LayerInputEntity_V24.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum LayerInputEntity_V24: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V24
    public typealias PreviousInstance = LayerInputEntity_V23.LayerInputEntity
    public typealias LayerInputDataEntity = LayerInputDataEntity_V24.LayerInputDataEntity
    public typealias CanvasNodeEntity = CanvasNodeEntity_V24.CanvasNodeEntity
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

extension LayerInputEntity_V24.LayerInputEntity: StitchVersionedCodable {
    public init(previousInstance: LayerInputEntity_V24.PreviousInstance) {
        self.init(packedData: .init(previousInstance: previousInstance.packedData),
                  unpackedData: .init(previousElements: previousInstance.unpackedData))
    }
}
