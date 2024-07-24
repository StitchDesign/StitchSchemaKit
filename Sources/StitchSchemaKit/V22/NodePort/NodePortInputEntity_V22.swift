//
//  NodePortInputEntity_V22.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V22: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V22
    typealias NodeEntitySchema = NodeEntity_V22
    public typealias PreviousInstance = NodePortInputEntity_V21.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V22
    public typealias NodeIOCoordinate = NodeIOCoordinate_V22.NodeIOCoordinate
    public typealias NodeConnectionType = NodeConnectionType_V22.NodeConnectionType
    public typealias NodeKind = NodeKind_V22.NodeKind
    public typealias UserVisibleType = UserVisibleType_V22.UserVisibleType
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

extension NodePortInputEntity_V22.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V22.PreviousInstance) {
        self.init(id: NodePortInputEntity_V22.NodeIOCoordinate(previousInstance: previousInstance.id),
                  portData: .init(previousInstance: previousInstance.portData),
                  nodeKind: NodePortInputEntity_V22.NodeKind(previousInstance: previousInstance.nodeKind),
                  userVisibleType: NodePortInputEntity_V22.UserVisibleType(previousInstance: previousInstance.userVisibleType))
    }
}
