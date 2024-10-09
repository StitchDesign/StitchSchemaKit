//
//  ComponentEntity_V25.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum ComponentEntity_V25: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V25
    public typealias PreviousInstance = NodeTypeEntity_V24.NodeTypeEntity
    // MARK: - end

    public struct ComponentEntity: Codable, Hashable {
        public let componentId: UUID
        public var inputs: [NodeConnectionType_V25.NodeConnectionType]
        public var canvasEntity: CanvasNodeEntity_V25.CanvasNodeEntity
        
        public init(componentId: UUID,
                    inputs: [NodeConnectionType_V25.NodeConnectionType],
                    canvasEntity: CanvasNodeEntity_V25.CanvasNodeEntity) {
            self.componentId = componentId
            self.inputs = inputs
            self.canvasEntity = canvasEntity
        }
    }
}

extension ComponentEntity_V25.ComponentEntity: StitchVersionedCodable {
    public init(previousInstance: NodeTypeEntity_V25.PreviousInstance) {
        // TODO: fix after version 25
        fatalError()
    }
}
