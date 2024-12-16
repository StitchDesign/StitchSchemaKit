//
//  GraphEntity_V29.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum GraphEntity_V29: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V29
    public typealias PreviousInstance = GraphEntity_V28.GraphEntity
    public typealias NodeEntity = NodeEntity_V29.NodeEntity
    public typealias SidebarLayerData = SidebarLayerData_V29.SidebarLayerData
    public typealias CommentBoxData = CommentBoxData_V29.CommentBoxData
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

extension GraphEntity_V29.GraphEntity: StitchVersionedCodable {
    public init(previousInstance: GraphEntity_V29.PreviousInstance) {
        self = .init(id: previousInstance.id,
                     name: previousInstance.name,
                     nodes: .init(previousElements: previousInstance.nodes),
                     orderedSidebarLayers: .init(previousElements: previousInstance.orderedSidebarLayers),
                     commentBoxes: .init(previousElements: previousInstance.commentBoxes))
    }
}
