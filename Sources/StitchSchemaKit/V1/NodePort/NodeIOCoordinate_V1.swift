//
//  NodeIOCoordinate.swift
//
//
//  Created by Elliot Boschwitz on 1/24/24.
//

import Foundation

public enum NodeIOCoordinate_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.NodeIOCoordinate
    // MARK: - endif
    
    public struct NodeIOCoordinate: Hashable, Equatable {
        public var portId: Int
        public var nodeId: UUID
        
        public init(portId: Int, nodeId: UUID) {
            self.portId = portId
            self.nodeId = nodeId
        }
    }
}

extension NodeIOCoordinate_V1.NodeIOCoordinate: StitchVersionedCodable {
    public init(previousInstance: NodeIOCoordinate_V1.PreviousInstance) {
        fatalError()
    }
}
