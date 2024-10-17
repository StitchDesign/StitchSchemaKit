//
//  NodeTypeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum NodeEntity_V26: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V25
    public typealias PreviousInstance = NodeEntity_V25.NodeEntity
    public typealias NodeTypeEntity = NodeTypeEntity_V26.NodeTypeEntity
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

extension NodeEntity_V26.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V26.PreviousInstance) {
        self.id = previousInstance.id
        self.title = previousInstance.title
        self.nodeTypeEntity = .init(previousInstance: previousInstance.nodeTypeEntity)
    }   
}
