//
//  CommentExpansionBox_V2.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation


public enum CommentExpansionBox_V2: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V2
    public typealias PreviousInstance = CommentExpansionBox_V1.CommentExpansionBox
    public typealias ExpansionDirection = ExpansionDirection_V2.ExpansionDirection

    // MARK: - endif
 

    public struct CommentExpansionBox: Equatable, Hashable {
        public var nodes: Set<UUID> = .init()
        
        // set nil after gesture completes;
        // set non-nil when gesture first starts
        public var expansionDirection: ExpansionDirection?
        
        // size is always positive numbers
        public var size: CGSize // = .zero
        public var previousSize: CGSize // = .zero
        
        // drag gesture start
        public var startPoint: CGPoint // = .zero
        
        // drag gesture current
        public var endPoint: CGPoint // = .zero
        
        public var anchorCorner: CGPoint
        
        public init(nodes: Set<UUID> = .init(),
                    expansionDirection: ExpansionDirection? = nil,
                    size: CGSize,
                    startPoint: CGPoint,
                    endPoint: CGPoint,
                    anchorCorner: CGPoint? = nil) {
            self.nodes = nodes
            self.expansionDirection = expansionDirection
            self.size = size
            self.previousSize = size
            self.startPoint = startPoint
            self.endPoint = endPoint
            self.anchorCorner = anchorCorner ?? startPoint
        }
    }

}

extension CommentExpansionBox_V2.CommentExpansionBox: StitchVersionedCodable {
    public init(previousInstance: CommentExpansionBox_V2.PreviousInstance) {
        self.init(size: previousInstance.size, startPoint: previousInstance.startPoint, endPoint: previousInstance.endPoint)
    }
}
