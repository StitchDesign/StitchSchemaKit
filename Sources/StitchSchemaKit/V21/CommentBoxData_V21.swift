//
//  CommentBoxData_V21.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation
import SwiftUI

public enum CommentBoxData_V21: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V21
    public typealias PreviousInstance = CommentBoxData_V20.CommentBoxData
    public typealias CanvasItemId = CanvasItemId_V21.CanvasItemId
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
        public var nodes: Set<CanvasItemId>
        public var position: CGPoint
        public var size: CGSize
        public var zIndex: Double // = .zero
        
        public init(id: CommentBoxId = .init(),
                    groupId: UUID? = nil,
                    title: String = "Comment",
                    color: Color,
                    nodes: Set<CanvasItemId> = .init(),
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

extension CommentBoxData_V21.CommentBoxData: StitchVersionedCodable {
    public init(previousInstance: CommentBoxData_V21.PreviousInstance) {
        self.init(id: previousInstance.id,
                  groupId: previousInstance.groupId,
                  title: previousInstance.title,
                  color: previousInstance.color,

                  // MARK: just needed for v21, should point to property in future versions
                  nodes: .init(),

                  position: previousInstance.position,
                  size: previousInstance.size,
                  zIndex: previousInstance.zIndex)
    }
}
