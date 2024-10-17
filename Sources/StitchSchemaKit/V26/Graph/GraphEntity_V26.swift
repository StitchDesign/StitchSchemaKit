//
//  GraphEntity_V26.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum GraphEntity_V26: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V26
    public typealias PreviousInstance = GraphEntity_V25.GraphEntity
    public typealias NodeEntity = NodeEntity_V26.NodeEntity
    public typealias SidebarLayerData = SidebarLayerData_V26.SidebarLayerData
    public typealias CommentBoxData = CommentBoxData_V26.CommentBoxData
    // MARK: - end

    public struct GraphEntity: Hashable, Sendable {
        public var id: UUID
        public var name: String
        public var nodes: [NodeEntity]
        public var orderedSidebarLayers: [SidebarLayerData]
        public let commentBoxes: [CommentBoxData]
        
        public init(id: UUID,
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

extension GraphEntity_V26.GraphEntity: StitchVersionedCodable {
    public init(previousInstance: GraphEntity_V26.PreviousInstance) {
        // TODO: not migrating during V25 -> V26 because has not yet been released as feature
        fatalError()
    }
}
