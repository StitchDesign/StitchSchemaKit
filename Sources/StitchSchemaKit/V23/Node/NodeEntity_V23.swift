//
//  NodeTypeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum NodeEntity_V23: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V22
    public typealias PreviousInstance = NodeEntity_V22.NodeEntity
    public typealias NodeTypeEntity = NodeTypeEntity_V23.NodeTypeEntity
    // MARK: - end

    public struct NodeEntity: Equatable, Identifiable {
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

extension NodeEntity_V23.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V23.PreviousInstance) {
        self.id = previousInstance.id
        self.title = previousInstance.title
        self.nodeTypeEntity = .init(previousInstance: previousInstance.nodeTypeEntity)
    }   
}
