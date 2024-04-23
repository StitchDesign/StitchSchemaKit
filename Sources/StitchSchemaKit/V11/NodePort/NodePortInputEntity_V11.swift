//
//  NodePortInputEntity_V11.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V11: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V11
    typealias NodeEntitySchema = NodeEntity_V11
    public typealias PreviousInstance = NodePortInputEntity_V10.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V11
    public typealias PortValueSchemas = [PortValue_V11.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V11.NodeIOCoordinate
    public typealias NodeKind = NodeKind_V11.NodeKind
    public typealias UserVisibleType = UserVisibleType_V11.UserVisibleType
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

extension NodePortInputEntity_V11.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V11.PreviousInstance) {
        self.init(id: NodePortInputEntity_V11.NodeIOCoordinate(previousInstance: previousInstance.id),
                  nodeKind: NodePortInputEntity_V11.NodeKind(previousInstance: previousInstance.nodeKind),
                  userVisibleType: NodePortInputEntity_V11.UserVisibleType(previousInstance: previousInstance.userVisibleType),
                  values: NodePortInputEntity_V11.PortValueSchemas(previousElements: previousInstance.values),
                  upstreamOutputCoordinate: NodePortInputEntity_V11.NodeIOCoordinate(previousInstance: previousInstance.upstreamOutputCoordinate))
    }
}
