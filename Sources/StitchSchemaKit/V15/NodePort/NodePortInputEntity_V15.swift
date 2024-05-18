//
//  NodePortInputEntity_V15.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V15: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V15
    typealias NodeEntitySchema = NodeEntity_V15
    public typealias PreviousInstance = NodePortInputEntity_V14.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V15
    public typealias PortValueSchemas = [PortValue_V15.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V15.NodeIOCoordinate
    public typealias NodeKind = NodeKind_V15.NodeKind
    public typealias UserVisibleType = UserVisibleType_V15.UserVisibleType
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

extension NodePortInputEntity_V15.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V15.PreviousInstance) {
        self.init(id: NodePortInputEntity_V15.NodeIOCoordinate(previousInstance: previousInstance.id),
                  nodeKind: NodePortInputEntity_V15.NodeKind(previousInstance: previousInstance.nodeKind),
                  userVisibleType: NodePortInputEntity_V15.UserVisibleType(previousInstance: previousInstance.userVisibleType),
                  values: NodePortInputEntity_V15.PortValueSchemas(previousElements: previousInstance.values),
                  upstreamOutputCoordinate: NodePortInputEntity_V15.NodeIOCoordinate(previousInstance: previousInstance.upstreamOutputCoordinate))
    }
}
