//
//  NodeIOCoordinate.swift
//
//
//  Created by Elliot Boschwitz on 1/24/24.
//

import Foundation

public enum NodeIOCoordinate_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = NodeIOCoordinate_V25.NodeIOCoordinate
    public typealias NodeIOPortType = NodeIOPortType_V26.NodeIOPortType
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

extension NodeIOCoordinate_V26.NodeIOCoordinate: StitchVersionedCodable {
    public init(previousInstance: NodeIOCoordinate_V26.PreviousInstance) {
        self.portType = .init(previousInstance: previousInstance.portType)
        self.nodeId = previousInstance.nodeId
    }
}
