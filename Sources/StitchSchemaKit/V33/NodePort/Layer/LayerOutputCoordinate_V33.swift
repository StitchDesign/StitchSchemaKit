//
//  LayerOutputCoordinate_V33.swift
//
//
//  Created by Elliot Boschwitz on 7/12/24.
//

import Foundation

public enum LayerOutputCoordinate_V33: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V33
    public typealias PreviousInstance = LayerOutputCoordinate_V32.LayerOutputCoordinate
    typealias LayerInputType = LayerInputType_V33.LayerInputType
    // MARK: - endif
 

    public struct LayerOutputCoordinate: Equatable, Hashable {
        public var node: UUID // id for the parent layer node
        public var portId: Int
        
        public init(node: UUID, portId: Int) {
            self.node = node
            self.portId = portId
        }
    }
}

extension LayerOutputCoordinate_V33.LayerOutputCoordinate: StitchVersionedCodable {
    public init(previousInstance: LayerOutputCoordinate_V33.PreviousInstance) {
        self.node = previousInstance.node
        self.portId = previousInstance.portId
    }
}
