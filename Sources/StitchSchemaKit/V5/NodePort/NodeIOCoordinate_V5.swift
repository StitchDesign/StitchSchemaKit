//
//  NodeIOCoordinate.swift
//
//
//  Created by Elliot Boschwitz on 1/24/24.
//

import Foundation

public enum NodeIOCoordinate_V5: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V5
    public typealias PreviousInstance = NodeIOCoordinate_V4.NodeIOCoordinate
    // MARK: - endif
    
    public struct NodeIOCoordinate: Hashable, Equatable {
        public var portId: Int
        public var nodeId: NodeId
        
        public init(portId: Int, nodeId: NodeId) {
            self.portId = portId
            self.nodeId = nodeId
        }
    }
}

extension NodeIOCoordinate_V5.NodeIOCoordinate: StitchVersionedCodable {
    public init(previousInstance: NodeIOCoordinate_V5.PreviousInstance) {
        self.init(portId: previousInstance.portId, nodeId: previousInstance.nodeId)
    }
}