//
//  NodeIOCoordinate.swift
//
//
//  Created by Elliot Boschwitz on 1/24/24.
//

import Foundation

public enum NodeIOCoordinate_V4: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V4
    public typealias PreviousInstance = NodeIOCoordinate_V3.NodeIOCoordinate
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

extension NodeIOCoordinate_V4.NodeIOCoordinate: StitchVersionedCodable {
    public init(previousInstance: NodeIOCoordinate_V4.PreviousInstance) {
        self.init(portId: previousInstance.portId, nodeId: previousInstance.nodeId)
    }
}
