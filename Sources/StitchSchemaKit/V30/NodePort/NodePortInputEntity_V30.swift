//
//  NodePortInputEntity_V30.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V30: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V30
    typealias NodeEntitySchema = NodeEntity_V30
    public typealias PreviousInstance = NodePortInputEntity_V29.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V30
    public typealias NodeIOCoordinate = NodeIOCoordinate_V30.NodeIOCoordinate
    public typealias NodeConnectionType = NodeConnectionType_V30.NodeConnectionType
    public typealias NodeKind = NodeKind_V30.NodeKind
    public typealias UserVisibleType = UserVisibleType_V30.UserVisibleType
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

extension NodePortInputEntity_V30.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V30.PreviousInstance) {
        self.init(id: .init(previousInstance: previousInstance.id),
                  portData: .init(previousInstance: previousInstance.portData))
    }
}
