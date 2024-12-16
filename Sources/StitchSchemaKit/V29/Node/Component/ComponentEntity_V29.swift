//
//  ComponentEntity_V29.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum ComponentEntity_V29: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V29
    public typealias PreviousInstance = ComponentEntity_V28.ComponentEntity
    // MARK: - end

    public struct ComponentEntity: Codable, Hashable {
        public let componentId: UUID
        public var inputs: [NodeConnectionType_V29.NodeConnectionType]
        public var canvasEntity: CanvasNodeEntity_V29.CanvasNodeEntity
        
        public init(componentId: UUID,
                    inputs: [NodeConnectionType_V29.NodeConnectionType],
                    canvasEntity: CanvasNodeEntity_V29.CanvasNodeEntity) {
            self.componentId = componentId
            self.inputs = inputs
            self.canvasEntity = canvasEntity
        }
    }
}

extension ComponentEntity_V29.ComponentEntity: StitchVersionedCodable {
    public init(previousInstance: ComponentEntity_V29.PreviousInstance) {
        self = .init(componentId: previousInstance.componentId,
                     inputs: .init(previousElements: previousInstance.inputs),
                     canvasEntity: .init(previousInstance: previousInstance.canvasEntity))
    }
}
