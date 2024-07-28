//
//  LayerInputDataEntity.swift
//
//
//  Created by Elliot Boschwitz on 7/6/24.
//

import Foundation


public enum LayerInputDataEntity_V22: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V22
    public typealias PreviousInstance = LayerInputDataEntity_V21.LayerInputDataEntity
    public typealias NodeConnectionType = NodeConnectionType_V22.NodeConnectionType
    public typealias CanvasNodeEntity = CanvasNodeEntity_V22.CanvasNodeEntity
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

extension LayerInputDataEntity_V22.LayerInputDataEntity: StitchVersionedCodable {
    public init(previousInstance: LayerInputDataEntity_V22.PreviousInstance) {
        self.inputPort = .init(previousInstance: previousInstance.inputPort)
        self.canvasItem = .init(previousInstance: previousInstance.canvasItem)
    }
}
