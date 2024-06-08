//
//  CommentBoxData_V8.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation
import SwiftUI

public enum CommentBoxData_V8: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V8
    public typealias PreviousInstance = CommentBoxData_V7.CommentBoxData
    // MARK: - endif
 

    public struct CommentBoxData: Equatable, Hashable {
        public var id: UUID
        
        /*
         "Which traversal level (group node) does this comment box belong to?"
         
         nil = top level
         
         TODO: implement this properly, but wait until after SwiftData since e.g. VisibleNodesViewModel etc. may be changing.
         
         For now we just make all comment boxes top-level.
         */
        public var groupId: UUID?
        public var title: String = "Comment"
        public var color: Color
        public var nodes: Set<UUID>
        public var position: CGPoint
        public var size: CGSize
        public var zIndex: Double // = .zero
        
        public init(id: CommentBoxId = .init(),
                    groupId: UUID? = nil,
                    title: String = "Comment",
                    color: Color,
                    nodes: Set<UUID> = .init(),
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

extension CommentBoxData_V8.CommentBoxData: StitchVersionedCodable {
    public init(previousInstance: CommentBoxData_V8.PreviousInstance) {
        self.init(id: previousInstance.id,
                  groupId: previousInstance.groupId,
                  title: previousInstance.title,
                  color: previousInstance.color,
                  nodes: previousInstance.nodes,
                  position: previousInstance.position,
                  size: previousInstance.size,
                  zIndex: previousInstance.zIndex)
    }
}
