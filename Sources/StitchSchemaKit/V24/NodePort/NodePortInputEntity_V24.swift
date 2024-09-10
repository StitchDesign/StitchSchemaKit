//
//  NodePortInputEntity_V24.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V24: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V24
    typealias NodeEntitySchema = NodeEntity_V24
    public typealias PreviousInstance = NodePortInputEntity_V23.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V24
    public typealias NodeIOCoordinate = NodeIOCoordinate_V24.NodeIOCoordinate
    public typealias NodeConnectionType = NodeConnectionType_V24.NodeConnectionType
    public typealias NodeKind = NodeKind_V24.NodeKind
    public typealias UserVisibleType = UserVisibleType_V24.UserVisibleType
    // MARK: - end

    public struct NodePortInputEntity: Equatable {
        public let id: NodeIOCoordinate
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

extension NodePortInputEntity_V24.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V24.PreviousInstance) {
        self.init(id: .init(previousInstance: previousInstance.id),
                  portData: .init(previousInstance: previousInstance.portData),
                  nodeKind: .init(previousInstance: previousInstance.nodeKind),
                  userVisibleType: .init(previousInstance: previousInstance.userVisibleType))
    }
}
