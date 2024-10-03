//
//  LayerInputDataEntity.swift
//
//
//  Created by Elliot Boschwitz on 7/6/24.
//

import Foundation


public enum LayerInputDataEntity_V25: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V25
    public typealias PreviousInstance = LayerInputDataEntity_V24.LayerInputDataEntity
    public typealias NodeConnectionType = NodeConnectionType_V25.NodeConnectionType
    public typealias CanvasNodeEntity = CanvasNodeEntity_V25.CanvasNodeEntity
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

extension LayerInputDataEntity_V25.LayerInputDataEntity: StitchVersionedCodable {
    public init(previousInstance: LayerInputDataEntity_V25.PreviousInstance) {
        self.init(
            inputPort: .init(previousInstance: previousInstance.inputPort),
            canvasItem: .init(previousInstance: previousInstance.canvasItem)
        )
    }
}
