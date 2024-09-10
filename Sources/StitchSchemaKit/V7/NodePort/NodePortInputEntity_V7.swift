//
//  NodePortInputEntity_V7.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V7: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V7
    typealias NodeEntitySchema = NodeEntity_V7
    public typealias PreviousInstance = NodePortInputEntity_V6.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V7
    public typealias PortValueSchemas = [PortValue_V7.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V7.NodeIOCoordinate
    public typealias NodeKind = NodeKind_V7.NodeKind
    public typealias UserVisibleType = UserVisibleType_V7.UserVisibleType
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

extension NodePortInputEntity_V7.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V7.PreviousInstance) {
        self.init(id: NodePortInputEntity_V7.NodeIOCoordinate(previousInstance: previousInstance.id),
                  nodeKind: NodePortInputEntity_V7.NodeKind(previousInstance: previousInstance.nodeKind),
                  userVisibleType: NodePortInputEntity_V7.UserVisibleType(previousInstance: previousInstance.userVisibleType),
                  values: NodePortInputEntity_V7.PortValueSchemas(previousElements: previousInstance.values),
                  upstreamOutputCoordinate: NodePortInputEntity_V7.NodeIOCoordinate(previousInstance: previousInstance.upstreamOutputCoordinate))
    }
}
