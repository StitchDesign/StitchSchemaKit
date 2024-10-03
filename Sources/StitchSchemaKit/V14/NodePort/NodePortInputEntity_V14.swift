//
//  NodePortInputEntity_V14.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V14: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V14
    typealias NodeEntitySchema = NodeEntity_V14
    public typealias PreviousInstance = NodePortInputEntity_V13.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V14
    public typealias PortValueSchemas = [PortValue_V14.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V14.NodeIOCoordinate
    public typealias NodeKind = NodeKind_V14.NodeKind
    public typealias UserVisibleType = UserVisibleType_V14.UserVisibleType
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

extension NodePortInputEntity_V14.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V14.PreviousInstance) {
        self.init(id: NodePortInputEntity_V14.NodeIOCoordinate(previousInstance: previousInstance.id),
                  nodeKind: NodePortInputEntity_V14.NodeKind(previousInstance: previousInstance.nodeKind),
                  userVisibleType: NodePortInputEntity_V14.UserVisibleType(previousInstance: previousInstance.userVisibleType),
                  values: NodePortInputEntity_V14.PortValueSchemas(previousElements: previousInstance.values),
                  upstreamOutputCoordinate: NodePortInputEntity_V14.NodeIOCoordinate(previousInstance: previousInstance.upstreamOutputCoordinate))
    }
}
