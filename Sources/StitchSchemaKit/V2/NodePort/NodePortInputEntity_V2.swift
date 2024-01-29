//
//  NodePortInputEntity_V2.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V2: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V2
    typealias NodeEntitySchema = NodeEntity_V2
    public typealias PreviousInstance = Self.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V2
    // MARK: - end

    public struct NodePortInputEntity {
        public let id: NodeIOCoordinate
        public let nodeKind: NodeKind
        public let userVisibleType: UserVisibleType?
        // Either we have values or an upstream connection
        public let values: PortValues?
        public let upstreamOutputCoordinate: NodeIOCoordinate?
        
        public init(id: NodeIOCoordinate,
                    nodeKind: NodeKind,
                    userVisibleType: UserVisibleType?,
                    values: PortValues?, upstreamOutputCoordinate: NodeIOCoordinate?) {
            self.id = id
            self.nodeKind = nodeKind
            self.userVisibleType = userVisibleType
            self.values = values
            self.upstreamOutputCoordinate = upstreamOutputCoordinate
        }
    }
}

extension NodePortInputEntity_V2.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V2.PreviousInstance) {
        fatalError()
    }
}
