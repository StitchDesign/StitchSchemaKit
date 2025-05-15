//
//  LayerInputDataEntity.swift
//
//
//  Created by Elliot Boschwitz on 7/6/24.
//

import Foundation


public enum LayerInputDataEntity_V31: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V31
    public typealias PreviousInstance = LayerInputDataEntity_V30.LayerInputDataEntity
    public typealias NodeConnectionType = NodeConnectionType_V31.NodeConnectionType
    public typealias CanvasNodeEntity = CanvasNodeEntity_V31.CanvasNodeEntity
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

extension LayerInputDataEntity_V31.LayerInputDataEntity: StitchVersionedCodable {
    public init(previousInstance: LayerInputDataEntity_V31.PreviousInstance) {
        self.init(
            inputPort: .init(previousInstance: previousInstance.inputPort),
            canvasItem: .init(previousInstance: previousInstance.canvasItem)
        )
    }
}
