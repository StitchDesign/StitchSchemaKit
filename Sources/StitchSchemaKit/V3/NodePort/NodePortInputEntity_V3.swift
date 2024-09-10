//
//  NodePortInputEntity_V3.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V3: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V3
    typealias NodeEntitySchema = NodeEntity_V3
    public typealias PreviousInstance = NodePortInputEntity_V2.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V3
    public typealias PortValueSchemas = [PortValue_V3.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V3.NodeIOCoordinate
    public typealias NodeKind = NodeKind_V3.NodeKind
    public typealias UserVisibleType = UserVisibleType_V3.UserVisibleType
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

extension NodePortInputEntity_V3.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V3.PreviousInstance) {
        self.init(id: NodePortInputEntity_V3.NodeIOCoordinate(previousInstance: previousInstance.id),
                  nodeKind: NodePortInputEntity_V3.NodeKind(previousInstance: previousInstance.nodeKind),
                  userVisibleType: NodePortInputEntity_V3.UserVisibleType(previousInstance: previousInstance.userVisibleType),
                  values: NodePortInputEntity_V3.PortValueSchemas(previousElements: previousInstance.values),
                  upstreamOutputCoordinate: NodePortInputEntity_V3.NodeIOCoordinate(previousInstance: previousInstance.upstreamOutputCoordinate))
    }
}
