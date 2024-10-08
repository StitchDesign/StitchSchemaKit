//
//  NodePortInputEntity_V5.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V5: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V5
    typealias NodeEntitySchema = NodeEntity_V5
    public typealias PreviousInstance = NodePortInputEntity_V4.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V5
    public typealias PortValueSchemas = [PortValue_V5.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V5.NodeIOCoordinate
    public typealias NodeKind = NodeKind_V5.NodeKind
    public typealias UserVisibleType = UserVisibleType_V5.UserVisibleType
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

extension NodePortInputEntity_V5.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V5.PreviousInstance) {
        self.init(id: NodePortInputEntity_V5.NodeIOCoordinate(previousInstance: previousInstance.id),
                  nodeKind: NodePortInputEntity_V5.NodeKind(previousInstance: previousInstance.nodeKind),
                  userVisibleType: NodePortInputEntity_V5.UserVisibleType(previousInstance: previousInstance.userVisibleType),
                  values: NodePortInputEntity_V5.PortValueSchemas(previousElements: previousInstance.values),
                  upstreamOutputCoordinate: NodePortInputEntity_V5.NodeIOCoordinate(previousInstance: previousInstance.upstreamOutputCoordinate))
    }
}
