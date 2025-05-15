//
//  NodePortInputEntity_V31.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/1/23.
//

import Foundation
import SwiftUI

public enum NodePortInputEntity_V31: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V31
    typealias NodeEntitySchema = NodeEntity_V31
    public typealias PreviousInstance = NodePortInputEntity_V30.NodePortInputEntity
    typealias PatchNodeEntitySchema = PatchNodeEntity_V31
    public typealias NodeIOCoordinate = NodeIOCoordinate_V31.NodeIOCoordinate
    public typealias NodeConnectionType = NodeConnectionType_V31.NodeConnectionType
    public typealias NodeKind = NodeKind_V31.NodeKind
    public typealias UserVisibleType = UserVisibleType_V31.UserVisibleType
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

extension NodePortInputEntity_V31.NodePortInputEntity: StitchVersionedCodable {
    public init(previousInstance: NodePortInputEntity_V31.PreviousInstance) {
        self.init(id: .init(previousInstance: previousInstance.id),
                  portData: .init(previousInstance: previousInstance.portData))
    }
}
