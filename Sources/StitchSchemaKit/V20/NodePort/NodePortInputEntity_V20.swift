//
//  NodePortInputEntity_V20.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V20: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V20
    typealias NodeEntitySchema = NodeEntity_V20
    public typealias PreviousInstance = NodePortInputEntity_V19.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V20
    public typealias PortValueSchemas = [PortValue_V20.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V20.NodeIOCoordinate
    public typealias NodeKind = NodeKind_V20.NodeKind
    public typealias UserVisibleType = UserVisibleType_V20.UserVisibleType
    // MARK: - end

    public struct NodePortInputEntity: Equatable {
        public var id: NodeIOCoordinate
        public let nodeKind: NodeKind
        public let userVisibleType: UserVisibleType?
        // Either we have values or an upstream connection
        public let values: PortValueSchemas?
        public let upstreamOutputCoordinate: NodeIOCoordinate?
        
        public init(id: NodeIOCoordinate,
                    nodeKind: NodeKind,
                    userVisibleType: UserVisibleType?,
                    values: PortValueSchemas?,
                    upstreamOutputCoordinate: NodeIOCoordinate?) {
            self.id = id
            self.nodeKind = nodeKind
            self.userVisibleType = userVisibleType
            self.values = values
            self.upstreamOutputCoordinate = upstreamOutputCoordinate
        }
    }
}

extension NodePortInputEntity_V20.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V20.PreviousInstance) {
        self.init(id: NodePortInputEntity_V20.NodeIOCoordinate(previousInstance: previousInstance.id),
                  nodeKind: NodePortInputEntity_V20.NodeKind(previousInstance: previousInstance.nodeKind),
                  userVisibleType: NodePortInputEntity_V20.UserVisibleType(previousInstance: previousInstance.userVisibleType),
                  values: NodePortInputEntity_V20.PortValueSchemas(previousElements: previousInstance.values),
                  upstreamOutputCoordinate: NodePortInputEntity_V20.NodeIOCoordinate(previousInstance: previousInstance.upstreamOutputCoordinate))
    }
}
