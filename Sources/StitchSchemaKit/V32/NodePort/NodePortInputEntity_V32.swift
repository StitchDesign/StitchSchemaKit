//
//  NodePortInputEntity_V32.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V32: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V32
    typealias NodeEntitySchema = NodeEntity_V32
    public typealias PreviousInstance = NodePortInputEntity_V31.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V32
    public typealias NodeIOCoordinate = NodeIOCoordinate_V32.NodeIOCoordinate
    public typealias NodeConnectionType = NodeConnectionType_V32.NodeConnectionType
    public typealias NodeKind = NodeKind_V32.NodeKind
    public typealias UserVisibleType = UserVisibleType_V32.UserVisibleType
    // MARK: - end

    public struct NodePortInputEntity: Hashable, Identifiable {
        public let id: NodeIOCoordinate
        public var portData: NodeConnectionType
        
        public init(id: NodeIOCoordinate,
                    portData: NodeConnectionType) {
            self.id = id
            self.portData = portData
        }
    }
}

extension NodePortInputEntity_V32.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V32.PreviousInstance) {
        self.init(id: .init(previousInstance: previousInstance.id),
                  portData: .init(previousInstance: previousInstance.portData))
    }
}
