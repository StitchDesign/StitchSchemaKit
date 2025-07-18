//
//  LayerInputDataEntity.swift
//
//
//  Created by Elliot Boschwitz on 7/6/24.
//

import Foundation


public enum LayerInputDataEntity_V33: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V33
    public typealias PreviousInstance = LayerInputDataEntity_V32.LayerInputDataEntity
    public typealias NodeConnectionType = NodeConnectionType_V33.NodeConnectionType
    public typealias CanvasNodeEntity = CanvasNodeEntity_V33.CanvasNodeEntity
    // MARK: - end

    public struct LayerInputDataEntity: Hashable {
        public var inputPort: NodeConnectionType
        public var canvasItem: CanvasNodeEntity?
        
        public init(inputPort: NodeConnectionType, 
                    canvasItem: CanvasNodeEntity? = nil) {
            self.inputPort = inputPort
            self.canvasItem = canvasItem
        }
    }
}

extension LayerInputDataEntity_V33.LayerInputDataEntity: StitchVersionedCodable {
    public init(previousInstance: LayerInputDataEntity_V33.PreviousInstance) {
        self.init(
            inputPort: .init(previousInstance: previousInstance.inputPort),
            canvasItem: .init(previousInstance: previousInstance.canvasItem)
        )
    }
}
