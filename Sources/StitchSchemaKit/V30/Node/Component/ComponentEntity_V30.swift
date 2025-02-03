//
//  ComponentEntity_V30.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum ComponentEntity_V30: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V30
    public typealias PreviousInstance = ComponentEntity_V29.ComponentEntity
    // MARK: - end

    public struct ComponentEntity: Codable, Hashable {
        public let componentId: UUID
        public var inputs: [NodeConnectionType_V30.NodeConnectionType]
        public var canvasEntity: CanvasNodeEntity_V30.CanvasNodeEntity
        
        public init(componentId: UUID,
                    inputs: [NodeConnectionType_V30.NodeConnectionType],
                    canvasEntity: CanvasNodeEntity_V30.CanvasNodeEntity) {
            self.componentId = componentId
            self.inputs = inputs
            self.canvasEntity = canvasEntity
        }
    }
}

extension ComponentEntity_V30.ComponentEntity: StitchVersionedCodable {
    public init(previousInstance: ComponentEntity_V30.PreviousInstance) {
        self = .init(componentId: previousInstance.componentId,
                     inputs: .init(previousElements: previousInstance.inputs),
                     canvasEntity: .init(previousInstance: previousInstance.canvasEntity))
    }
}
