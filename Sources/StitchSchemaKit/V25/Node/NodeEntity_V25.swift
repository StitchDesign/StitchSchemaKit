//
//  NodeTypeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum NodeEntity_V25: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V24
    public typealias PreviousInstance = NodeEntity_V24.NodeEntity
    public typealias NodeTypeEntity = NodeTypeEntity_V25.NodeTypeEntity
    // MARK: - end

    public struct NodeEntity: Hashable, Identifiable {
        public let id: UUID
        public var nodeTypeEntity: NodeTypeEntity
        public let title: String
        
        public init(id: UUID,
                    nodeTypeEntity: NodeTypeEntity,
                    title: String) {
            self.id = id
            self.nodeTypeEntity = nodeTypeEntity
            self.title = title
        }
    }
}

extension NodeEntity_V25.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V25.PreviousInstance) {
        self.id = previousInstance.id
        self.title = previousInstance.title
        self.nodeTypeEntity = .init(previousInstance: previousInstance.nodeTypeEntity)
    }   
}
