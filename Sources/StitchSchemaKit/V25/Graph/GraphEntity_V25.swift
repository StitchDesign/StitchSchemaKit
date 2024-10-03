//
//  GraphEntity_V25.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum GraphEntity_V25: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V25
    public typealias PreviousInstance = GraphEntity_V25.GraphEntity
    public typealias NodeEntity = NodeEntity_V25.NodeEntity
    public typealias SidebarLayerData = SidebarLayerData_V25.SidebarLayerData
    public typealias CommentBoxData = CommentBoxData_V25.CommentBoxData
    // MARK: - end

    public struct GraphEntity: Codable, Equatable, Sendable {
        public var id: UUID
        public var name: String
        public var nodes: [NodeEntity]
        public var orderedSidebarLayers: [SidebarLayerData]
        public let commentBoxes: [CommentBoxData]
        
        init(id: UUID,
             name: String,
             nodes: [NodeEntity],
             orderedSidebarLayers: [SidebarLayerData],
             commentBoxes: [CommentBoxData]) {
            self.id = id
            self.name = name
            self.nodes = nodes
            self.orderedSidebarLayers = orderedSidebarLayers
            self.commentBoxes = commentBoxes
        }
    }
}

extension GraphEntity_V25.GraphEntity: StitchVersionedCodable {
    public init(previousInstance: GraphEntity_V25.PreviousInstance) {
        // TODO: fix after version 25
        fatalError()
    }
}
