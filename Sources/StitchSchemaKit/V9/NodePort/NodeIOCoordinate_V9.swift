//
//  NodeIOCoordinate.swift
//
//
//  Created by Elliot Boschwitz on 1/24/24.
//

import Foundation

public enum NodeIOCoordinate_V9: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V9
    public typealias PreviousInstance = NodeIOCoordinate_V8.NodeIOCoordinate
    public typealias NodeIOPortType = NodeIOPortType_V9.NodeIOPortType
    // MARK: - endif
    
    public struct NodeIOCoordinate: Hashable, Equatable {
        public var portType: NodeIOPortType
        public var nodeId: UUID
        
        public init(portType: NodeIOPortType, nodeId: UUID) {
            self.portType = portType
            self.nodeId = nodeId
        }
    }
}

extension NodeIOCoordinate_V9.NodeIOCoordinate: StitchVersionedCodable {
    public init(previousInstance: NodeIOCoordinate_V9.PreviousInstance) {
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
