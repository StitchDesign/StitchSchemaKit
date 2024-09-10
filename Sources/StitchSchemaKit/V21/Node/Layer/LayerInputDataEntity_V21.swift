//
//  LayerInputDataEntity.swift
//
//
//  Created by Elliot Boschwitz on 7/6/24.
//

import Foundation


public enum LayerInputDataEntity_V21: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V21
    public typealias PreviousInstance = Self.LayerInputDataEntity
    public typealias NodeConnectionType = NodeConnectionType_V21.NodeConnectionType
    public typealias CanvasNodeEntity = CanvasNodeEntity_V21.CanvasNodeEntity
    // MARK: - end

    public struct LayerInputDataEntity: Equatable {
        public let inputPort: NodeConnectionType
        public var canvasItem: CanvasNodeEntity?
        
        public init(inputPort: NodeConnectionType, 
                    canvasItem: CanvasNodeEntity? = nil) {
            self.inputPort = inputPort
            self.canvasItem = canvasItem
        }
    }
}

extension LayerInputDataEntity_V21.LayerInputDataEntity: StitchVersionedCodable {
    public init(previousInstance: LayerInputDataEntity_V21.PreviousInstance) {
        fatalError()
    }
}
