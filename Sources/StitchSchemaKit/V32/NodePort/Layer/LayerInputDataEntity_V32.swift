//
//  LayerInputDataEntity.swift
//
//
//  Created by Elliot Boschwitz on 7/6/24.
//

import Foundation


public enum LayerInputDataEntity_V32: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V32
    public typealias PreviousInstance = LayerInputDataEntity_V31.LayerInputDataEntity
    public typealias NodeConnectionType = NodeConnectionType_V32.NodeConnectionType
    public typealias CanvasNodeEntity = CanvasNodeEntity_V32.CanvasNodeEntity
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

extension LayerInputDataEntity_V32.LayerInputDataEntity: StitchVersionedCodable {
    public init(previousInstance: LayerInputDataEntity_V32.PreviousInstance) {
        self.init(
            inputPort: .init(previousInstance: previousInstance.inputPort),
            canvasItem: .init(previousInstance: previousInstance.canvasItem)
        )
    }
}
