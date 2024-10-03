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

    public struct ComponentEntity: Codable, Equatable {
        let componentId: UUID
        var inputs: [NodeConnectionType_V24.NodeConnectionType]
        var canvasEntity: CanvasNodeEntity_V24.CanvasNodeEntity
        
        init(componentId: UUID,
             inputs: [NodeConnectionType_V24.NodeConnectionType],
             canvasEntity: CanvasNodeEntity_V24.CanvasNodeEntity) {
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
