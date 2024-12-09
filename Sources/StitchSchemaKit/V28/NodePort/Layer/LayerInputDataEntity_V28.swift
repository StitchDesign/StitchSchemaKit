//
//  LayerInputDataEntity.swift
//
//
//  Created by Elliot Boschwitz on 7/6/24.
//

import Foundation


public enum LayerInputDataEntity_V28: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V28
    public typealias PreviousInstance = LayerInputDataEntity_V27.LayerInputDataEntity
    public typealias NodeConnectionType = NodeConnectionType_V28.NodeConnectionType
    public typealias CanvasNodeEntity = CanvasNodeEntity_V28.CanvasNodeEntity
    // MARK: - end

    public struct LayerInputDataEntity: Hashable {
        public let inputPort: NodeConnectionType
        public var canvasItem: CanvasNodeEntity?
        
        public init(inputPort: NodeConnectionType, 
                    canvasItem: CanvasNodeEntity? = nil) {
            self.inputPort = inputPort
            self.canvasItem = canvasItem
        }
    }
}

extension LayerInputDataEntity_V28.LayerInputDataEntity: StitchVersionedCodable {
    public init(previousInstance: LayerInputDataEntity_V28.PreviousInstance) {
        self.init(
            inputPort: .init(previousInstance: previousInstance.inputPort),
            canvasItem: .init(previousInstance: previousInstance.canvasItem)
        )
    }
}
