//
//  NodePortInputEntity_V1.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

enum NodePortInputEntity_V1: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V1
    typealias NodeEntitySchema = NodeEntity_V1
    typealias PreviousInstance = Self.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V1
    // MARK: - end

    struct NodePortInputEntity {
        let id: NodeIOCoordinate
        let nodeKind: NodeKind
        let userVisibleType: UserVisibleType?
        // Either we have values or an upstream connection
        let values: PortValues?
        let upstreamOutputCoordinate: NodeIOCoordinate?
    }
}

extension NodePortInputEntity_V1.NodePortInputEntity: StitchVersionedCodable {
    init(previousInstance: NodePortInputEntity_V1.PreviousInstance) {
        fatalError()
    }
}
