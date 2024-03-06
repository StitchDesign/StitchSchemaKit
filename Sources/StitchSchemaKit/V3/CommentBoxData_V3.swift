//
//  CommentBoxData_V3.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation
import SwiftUI

public enum CommentBoxData_V3: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V3
    public typealias PreviousInstance = CommentBoxData_V2.CommentBoxData
    // MARK: - endif
 

    public struct CommentBoxData: Equatable, Hashable {
        public var id: UUID
        
        /*
         "Which traversal level (group node) does this comment box belong to?"
         
         nil = top level
         
         TODO: implement this properly, but wait until after SwiftData since e.g. VisibleNodesViewModel etc. may be changing.
         
         For now we just make all comment boxes top-level.
         */
        public var groupId: NodeId?
        public var title: String = "Comment"
        public var color: Color
        public var nodes: NodeIdSet
        public var position: CGPoint
        public var size: CGSize
        public var zIndex: Double // = .zero
        
        public init(id: CommentBoxId = .init(),
                    groupId: NodeId? = nil,
                    title: String = "Comment",
                    color: Color,
                    nodes: NodeIdSet = .init(),
                    position: CGPoint = .zero,
                    size: CGSize,
                    zIndex: Double) {
            self.id = id
            self.groupId = groupId
            self.title = title
            self.color = color
            self.nodes = nodes
            self.position = position
            self.size = size
            self.zIndex = zIndex
        }
    }
}

extension CommentBoxData_V3.CommentBoxData: StitchVersionedCodable {
    public init(previousInstance: CommentBoxData_V3.PreviousInstance) {
        self.init(id: previousInstance.id,
                  groupId: previousInstance.groupId?.id,
                  title: previousInstance.title,
                  color: previousInstance.color,
                  nodes: previousInstance.nodes,
                  position: CGPoint(x: previousInstance.position.width,
                                    y: previousInstance.position.height),
                  size: previousInstance.expansionBox.size,
                  zIndex: previousInstance.zIndex)
    }
}
