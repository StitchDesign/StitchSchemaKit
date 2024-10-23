//
//  LayerOutputCoordinate_V27.swift
//
//
//  Created by Elliot Boschwitz on 7/12/24.
//

import Foundation

public enum LayerOutputCoordinate_V27: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V27
    public typealias PreviousInstance = LayerOutputCoordinate_V26.LayerOutputCoordinate
    typealias LayerInputType = LayerInputType_V27.LayerInputType
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

extension LayerOutputCoordinate_V27.LayerOutputCoordinate: StitchVersionedCodable {
    public init(previousInstance: LayerOutputCoordinate_V27.PreviousInstance) {
        self.node = previousInstance.node
        self.portId = previousInstance.portId
    }
}
