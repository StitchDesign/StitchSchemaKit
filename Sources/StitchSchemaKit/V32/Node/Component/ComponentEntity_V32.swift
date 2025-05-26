//
//  ComponentEntity_V32.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum ComponentEntity_V32: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V32
    public typealias PreviousInstance = ComponentEntity_V31.ComponentEntity
    // MARK: - end

    public struct ComponentEntity: Codable, Hashable {
        public let componentId: UUID
        public var inputs: [NodeConnectionType_V32.NodeConnectionType]
        public var canvasEntity: CanvasNodeEntity_V32.CanvasNodeEntity
        
        public init(componentId: UUID,
                    inputs: [NodeConnectionType_V32.NodeConnectionType],
                    canvasEntity: CanvasNodeEntity_V32.CanvasNodeEntity) {
            self.componentId = componentId
            self.inputs = inputs
            self.canvasEntity = canvasEntity
        }
    }
}

extension ComponentEntity_V32.ComponentEntity: StitchVersionedCodable {
    public init(previousInstance: ComponentEntity_V32.PreviousInstance) {
        self = .init(componentId: previousInstance.componentId,
                     inputs: .init(previousElements: previousInstance.inputs),
                     canvasEntity: .init(previousInstance: previousInstance.canvasEntity))
    }
}
