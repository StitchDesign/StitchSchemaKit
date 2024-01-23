//
//  NodePortInputEntity_V1.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V1: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V1
    typealias NodeEntitySchema = NodeEntity_V1
    public typealias PreviousInstance = Self.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V1
    // MARK: - end

    public struct NodePortInputEntity {
        public let id: NodeIOCoordinate
        public let nodeKind: NodeKind
        public let userVisibleType: UserVisibleType?
        // Either we have values or an upstream connection
        public let values: PortValues?
        public let upstreamOutputCoordinate: NodeIOCoordinate?
    }
}

extension NodePortInputEntity_V1.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V1.PreviousInstance) {
        fatalError()
    }
}
