//
//  NodeIOCoordinate.swift
//
//
//  Created by Elliot Boschwitz on 1/24/24.
//

import Foundation

public enum NodeIOCoordinate_V15: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V15
    public typealias PreviousInstance = NodeIOCoordinate_V14.NodeIOCoordinate
    public typealias NodeIOPortType = NodeIOPortType_V15.NodeIOPortType
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

extension NodeIOCoordinate_V15.NodeIOCoordinate: StitchVersionedCodable {
    public init(previousInstance: NodeIOCoordinate_V15.PreviousInstance) {
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