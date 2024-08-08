//
//  NodePortInputEntity_V23.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V23: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V23
    typealias NodeEntitySchema = NodeEntity_V23
    public typealias PreviousInstance = NodePortInputEntity_V22.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V23
    public typealias NodeIOCoordinate = NodeIOCoordinate_V23.NodeIOCoordinate
    public typealias NodeConnectionType = NodeConnectionType_V23.NodeConnectionType
    public typealias NodeKind = NodeKind_V23.NodeKind
    public typealias UserVisibleType = UserVisibleType_V23.UserVisibleType
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

extension NodePortInputEntity_V23.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V23.PreviousInstance) {
        self.init(id: .init(previousInstance: previousInstance.id),
                  portData: .init(previousInstance: previousInstance.portData),
                  nodeKind: .init(previousInstance: previousInstance.nodeKind),
                  userVisibleType: .init(previousInstance: previousInstance.userVisibleType))
    }
}
