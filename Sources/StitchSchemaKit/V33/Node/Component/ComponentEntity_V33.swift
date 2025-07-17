//
//  ComponentEntity_V33.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum ComponentEntity_V33: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V33
    public typealias PreviousInstance = ComponentEntity_V32.ComponentEntity
    // MARK: - end

    public struct ComponentEntity: Codable, Hashable {
        public let componentId: UUID
        public var inputs: [NodeConnectionType_V33.NodeConnectionType]
        public var canvasEntity: CanvasNodeEntity_V33.CanvasNodeEntity
        
        public init(componentId: UUID,
                    inputs: [NodeConnectionType_V33.NodeConnectionType],
                    canvasEntity: CanvasNodeEntity_V33.CanvasNodeEntity) {
            self.componentId = componentId
            self.inputs = inputs
            self.canvasEntity = canvasEntity
        }
    }
}

extension ComponentEntity_V33.ComponentEntity: StitchVersionedCodable {
    public init(previousInstance: ComponentEntity_V33.PreviousInstance) {
        self = .init(componentId: previousInstance.componentId,
                     inputs: .init(previousElements: previousInstance.inputs),
                     canvasEntity: .init(previousInstance: previousInstance.canvasEntity))
    }
}
