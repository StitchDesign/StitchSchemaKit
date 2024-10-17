//
//  ComponentEntity_V26.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum ComponentEntity_V26: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V26
    public typealias PreviousInstance = ComponentEntity_V25.ComponentEntity
    // MARK: - end

    public struct ComponentEntity: Codable, Hashable {
        public let componentId: UUID
        public var inputs: [NodeConnectionType_V26.NodeConnectionType]
        public var canvasEntity: CanvasNodeEntity_V26.CanvasNodeEntity
        
        public init(componentId: UUID,
                    inputs: [NodeConnectionType_V26.NodeConnectionType],
                    canvasEntity: CanvasNodeEntity_V26.CanvasNodeEntity) {
            self.componentId = componentId
            self.inputs = inputs
            self.canvasEntity = canvasEntity
        }
    }
}

extension ComponentEntity_V26.ComponentEntity: StitchVersionedCodable {
//    public init(previousInstance: NodeTypeEntity_V26.PreviousInstance) {
    public init(previousInstance: ComponentEntity_V26.PreviousInstance) {
        
        // TODO: fix after version 25
        fatalError()
    }
}
