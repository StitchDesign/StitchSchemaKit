//
//  MediaObjectId_V15.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum MediaObjectId_V15: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V15
    public typealias PreviousInstance = MediaObjectId_V14.MediaObjectId
    // MARK: - endif
 

    /// Combines a UUID with some NodeId to assign unique media objects to each node.
    /// This ensures 1:1 mapping between media and nodes.
    public struct MediaObjectId: Codable, Equatable, Hashable {
        // An ID that's associated with the original media
        public var globalId: UUID
        
        // Properties specific to the media's location in the node
        public var nodeId: NodeId
//        public var loopIndex: Int
        
        public init(globalId: UUID = UUID(),
                    nodeId: NodeId) {
            self.globalId = globalId
            self.nodeId = nodeId
//            self.loopIndex = loopIndex
        }
    }
 
}

extension MediaObjectId_V15.MediaObjectId: StitchVersionedCodable {
    public init(previousInstance: MediaObjectId_V15.PreviousInstance) {
        self.init(nodeId: previousInstance.nodeId)
    }
}
