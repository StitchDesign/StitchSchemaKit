//
//  NodePortInputEntity_V4.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V4: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V4
    typealias NodeEntitySchema = NodeEntity_V4
    public typealias PreviousInstance = NodePortInputEntity_V3.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V4
    public typealias PortValueSchemas = [PortValue_V4.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V4.NodeIOCoordinate
    public typealias NodeKind = NodeKind_V4.NodeKind
    public typealias UserVisibleType = UserVisibleType_V4.UserVisibleType
    // MARK: - end

    public struct NodePortInputEntity: Equatable {
        public let id: NodeIOCoordinate
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

extension NodePortInputEntity_V4.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V4.PreviousInstance) {
        self.init(id: NodePortInputEntity_V4.NodeIOCoordinate(previousInstance: previousInstance.id),
                  nodeKind: NodePortInputEntity_V4.NodeKind(previousInstance: previousInstance.nodeKind),
                  userVisibleType: NodePortInputEntity_V4.UserVisibleType(previousInstance: previousInstance.userVisibleType),
                  values: NodePortInputEntity_V4.PortValueSchemas(previousElements: previousInstance.values),
                  upstreamOutputCoordinate: NodePortInputEntity_V4.NodeIOCoordinate(previousInstance: previousInstance.upstreamOutputCoordinate))
    }
}
