//
//  NodePortInputEntity_V27.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V27: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V27
    typealias NodeEntitySchema = NodeEntity_V27
    public typealias PreviousInstance = NodePortInputEntity_V26.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V27
    public typealias NodeIOCoordinate = NodeIOCoordinate_V27.NodeIOCoordinate
    public typealias NodeConnectionType = NodeConnectionType_V27.NodeConnectionType
    public typealias NodeKind = NodeKind_V27.NodeKind
    public typealias UserVisibleType = UserVisibleType_V27.UserVisibleType
    // MARK: - end

    public struct NodePortInputEntity: Hashable, Identifiable {
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

extension NodePortInputEntity_V27.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V27.PreviousInstance) {
        self.init(id: .init(previousInstance: previousInstance.id),
                  portData: .init(previousInstance: previousInstance.portData),
                  nodeKind: .init(previousInstance: previousInstance.nodeKind),
                  userVisibleType: .init(previousInstance: previousInstance.userVisibleType))
    }
}
