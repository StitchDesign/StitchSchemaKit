//
//  NodePortInputEntity_V21.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V21: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V21
    typealias NodeEntitySchema = NodeEntity_V21
    public typealias PreviousInstance = NodePortInputEntity_V20.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V21
    public typealias NodeIOCoordinate = NodeIOCoordinate_V21.NodeIOCoordinate
    public typealias NodeConnectionType = NodeConnectionType_V21.NodeConnectionType
    public typealias NodeKind = NodeKind_V21.NodeKind
    public typealias UserVisibleType = UserVisibleType_V21.UserVisibleType
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

extension NodePortInputEntity_V21.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V21.PreviousInstance) {
        var portData: NodeConnectionType_V21.NodeConnectionType
        
        if let values = previousInstance.values {
            portData = .values(NodeConnectionType_V21.PortValues(previousElements: values))
        } else if let connection = previousInstance.upstreamOutputCoordinate {
            portData = .upstreamConnection(NodeConnectionType_V21.NodeIOCoordinate(previousInstance: connection))
        } else {
            // Unexpectd condition
            print("NodePortInputEntity_V21 migration: no values or upstream connection found")
            portData = .values([.number(.zero)])
        }
        
        self.init(id: NodePortInputEntity_V21.NodeIOCoordinate(previousInstance: previousInstance.id),
                  portData: portData,
                  nodeKind: NodePortInputEntity_V21.NodeKind(previousInstance: previousInstance.nodeKind),
                  userVisibleType: NodePortInputEntity_V21.UserVisibleType(previousInstance: previousInstance.userVisibleType))
    }
}
