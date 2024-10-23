//
//  GraphEntity_V27.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum GraphEntity_V27: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V27
    public typealias PreviousInstance = GraphEntity_V26.GraphEntity
    public typealias NodeEntity = NodeEntity_V27.NodeEntity
    public typealias SidebarLayerData = SidebarLayerData_V27.SidebarLayerData
    public typealias CommentBoxData = CommentBoxData_V27.CommentBoxData
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

extension GraphEntity_V27.GraphEntity: StitchVersionedCodable {
    public init(previousInstance: GraphEntity_V27.PreviousInstance) {
        self = .init(id: previousInstance.id,
                     name: previousInstance.name,
                     nodes: .init(previousElements: previousInstance.nodes),
                     orderedSidebarLayers: .init(previousElements: previousInstance.orderedSidebarLayers),
                     commentBoxes: .init(previousElements: previousInstance.commentBoxes))
    }
}
