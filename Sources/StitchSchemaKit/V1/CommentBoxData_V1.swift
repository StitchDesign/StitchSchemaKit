//
//  CommentBoxData_V1.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation
import SwiftUI

public enum CommentBoxData_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.CommentBoxData
    // MARK: - endif
 

    public struct CommentBoxData: Codable, Equatable, Hashable {
        public var id: CommentBoxId
        
        /*
         "Which traversal level (group node) does this comment box belong to?"
         
         nil = top level
         
         TODO: implement this properly, but wait until after SwiftData since e.g. VisibleNodesViewModel etc. may be changing.
         
         For now we just make all comment boxes top-level.
         */
        public var groupId: GroupNodeId?
        
        public var title: String = "Comment"
        public var color: Color
        
        public var nodes: NodeIdSet
        
        // TODO: potentially can consolidate CommentBoxData.position and CommentExpansionBox.startingPoint, CommentExpansionBox.anchorPoint, etc.;
        // a little hard to tell, since the trig + gesture logic is complicated;
        // low-priority refactor.
        public var position: CGSize
        public var previousPosition: CGSize
        public var expansionBox: CommentExpansionBox
        
        public var zIndex: Double // = .zero
        
        public init(id: CommentBoxId = .init(),
                    groupId: GroupNodeId? = nil,
                    title: String = "Comment",
                    color: Color,
                    nodes: NodeIdSet = .init(),
                    position: CGSize = .zero,
                    previousPosition: CGSize = .zero,
                    expansionBox: CommentExpansionBox,
                    zIndex: Double) {
            self.id = id
            self.groupId = groupId
            self.title = title
            self.color = color
            self.nodes = nodes
            self.position = position
            self.previousPosition = previousPosition
            self.expansionBox = expansionBox
            self.zIndex = zIndex
        }
    }


}

extension CommentBoxData_V1.CommentBoxData: StitchVersionedCodable {
    public init(previousInstance: CommentBoxData_V1.PreviousInstance) {
        fatalError()
    }
}
