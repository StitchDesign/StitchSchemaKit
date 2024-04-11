//
//  NodeIOCoordinate.swift
//
//
//  Created by Elliot Boschwitz on 1/24/24.
//

import Foundation

public enum NodeIOCoordinate_V6: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V6
    public typealias PreviousInstance = NodeIOCoordinate_V5.NodeIOCoordinate
    public typealias NodeIOPortType = NodeIOPortType_V6.NodeIOPortType
    // MARK: - endif
    
    public struct NodeIOCoordinate: Hashable, Equatable {
        public var portType: NodeIOPortType
        public var nodeId: NodeId
        
        public init(portType: NodeIOPortType, nodeId: NodeId) {
            self.portType = portType
            self.nodeId = nodeId
        }
    }
}

extension NodeIOCoordinate_V6.NodeIOCoordinate: StitchVersionedCodable {
    public init(previousInstance: NodeIOCoordinate_V6.PreviousInstance) {
        self.init(portType: .portIndex(previousInstance.portId),
                  nodeId: previousInstance.nodeId)
    }
}
