//
//  NodePortInputEntity_V19.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V19: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V19
    typealias NodeEntitySchema = NodeEntity_V19
    public typealias PreviousInstance = NodePortInputEntity_V18.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V19
    public typealias NodeIOCoordinate = NodeIOCoordinate_V19.NodeIOCoordinate
    public typealias NodeConnectionType = NodeConnectionType_V19.NodeConnectionType
    public typealias NodeKind = NodeKind_V19.NodeKind
    public typealias UserVisibleType = UserVisibleType_V19.UserVisibleType
    // MARK: - end

    public struct NodePortInputEntity: Equatable {
        public var id: NodeIOCoordinate
        public let portData: NodeConnectionType
        public let nodeKind: NodeKind
        public let userVisibleType: UserVisibleType?
        
        public init(id: NodeIOCoordinate,
                    portData: NodeConnectionType,
                    nodeKind: NodeKind,
                    userVisibleType: UserVisibleType?) {
            self.id = id
            self.portData = portData
            self.nodeKind = nodeKind
            self.userVisibleType = userVisibleType
        }
    }
}

extension NodePortInputEntity_V19.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V19.PreviousInstance) {
        var portData: NodeConnectionType_V19.NodeConnectionType
        
        if let values = previousInstance.values {
            portData = .values(NodeConnectionType_V19.PortValues(previousElements: values))
        } else if let connection = previousInstance.upstreamOutputCoordinate {
            portData = .upstreamConnection(NodeConnectionType_V19.NodeIOCoordinate(previousInstance: connection))
        } else {
            // Unexpectd condition
            print("NodePortInputEntity_V19 migration: no values or upstream connection found")
            portData = .values([.number(.zero)])
        }
        
        self.init(id: NodePortInputEntity_V19.NodeIOCoordinate(previousInstance: previousInstance.id),
                  portData: portData,
                  nodeKind: NodePortInputEntity_V19.NodeKind(previousInstance: previousInstance.nodeKind),
                  userVisibleType: NodePortInputEntity_V19.UserVisibleType(previousInstance: previousInstance.userVisibleType))
    }
}
