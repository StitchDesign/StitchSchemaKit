//
//  LayerInputDataEntity.swift
//
//
//  Created by Elliot Boschwitz on 7/6/24.
//

import Foundation


public enum LayerInputDataEntity_V23: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V23
    public typealias PreviousInstance = LayerInputDataEntity_V22.LayerInputDataEntity
    public typealias NodeConnectionType = NodeConnectionType_V23.NodeConnectionType
    public typealias CanvasNodeEntity = CanvasNodeEntity_V23.CanvasNodeEntity
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

extension LayerInputDataEntity_V23.LayerInputDataEntity: StitchVersionedCodable {
    public init(previousInstance: LayerInputDataEntity_V23.PreviousInstance) {
        self.init(
            inputPort: .init(previousInstance: previousInstance.inputPort),
            // TODO: fix canvas migration after V23, for V23 it needs to be nil to reset previous position port hack
            canvasItem: nil
        )
    }
}
