//
//  NodeIOCoordinate.swift
//
//
//  Created by Elliot Boschwitz on 1/24/24.
//

import Foundation

public enum NodeIOCoordinate_V22: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V22
    public typealias PreviousInstance = NodeIOCoordinate_V21.NodeIOCoordinate
    public typealias NodeIOPortType = NodeIOPortType_V22.NodeIOPortType
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

extension NodeIOCoordinate_V22.NodeIOCoordinate: StitchVersionedCodable {
    public init(previousInstance: NodeIOCoordinate_V22.PreviousInstance) {
        switch previousInstance.portType {
        case .keyPath(let x):
            self.init(portType: .keyPath(.init(layerInput: .init(previousInstance: x),
                                               portType: .packed)),
                      nodeId: previousInstance.nodeId)
        case .portIndex(let x):
            self.init(portType: .portIndex(x),
                      nodeId: previousInstance.nodeId)
        }
    }
}
