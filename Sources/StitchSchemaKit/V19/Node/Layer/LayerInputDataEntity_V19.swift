//
//  LayerInputDataEntity.swift
//
//
//  Created by Elliot Boschwitz on 7/6/24.
//

import Foundation


public enum LayerInputDataEntity_V19: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V19
    public typealias PreviousInstance = Self.LayerInputDataEntity
    public typealias NodeConnectionType = NodeConnectionType_V19.NodeConnectionType
    public typealias CanvasNodeEntity = CanvasNodeEntity_V19.CanvasNodeEntity
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

extension LayerInputDataEntity_V19.LayerInputDataEntity: StitchVersionedCodable {
    public init(previousInstance: LayerInputDataEntity_V19.PreviousInstance) {
        fatalError()
    }
}
