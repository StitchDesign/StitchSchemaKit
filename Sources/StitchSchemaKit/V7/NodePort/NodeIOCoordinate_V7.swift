//
//  NodeIOCoordinate.swift
//
//
//  Created by Elliot Boschwitz on 1/24/24.
//

import Foundation

public enum NodeIOCoordinate_V7: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V7
    public typealias PreviousInstance = NodeIOCoordinate_V6.NodeIOCoordinate
    public typealias NodeIOPortType = NodeIOPortType_V7.NodeIOPortType
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

extension NodeIOCoordinate_V7.NodeIOCoordinate: StitchVersionedCodable {
    public init(previousInstance: NodeIOCoordinate_V7.PreviousInstance) {
        switch previousInstance.portType {
        case .keyPath(let x):
            self.init(portType: .keyPath(.init(previousInstance: x)),
                      nodeId: previousInstance.nodeId)
        case .portIndex(let x):
            self.init(portType: .portIndex(x),
                      nodeId: previousInstance.nodeId)
        }
    }
}
