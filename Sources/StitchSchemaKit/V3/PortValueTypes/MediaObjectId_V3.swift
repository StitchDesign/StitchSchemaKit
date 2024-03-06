//
//  MediaObjectId_V3.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum MediaObjectId_V3: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V3
    public typealias PreviousInstance = MediaObjectId_V2.MediaObjectId
    // MARK: - endif
 

    /// Combines a UUID with some NodeId to assign unique media objects to each node.
    /// This ensures 1:1 mapping between media and nodes.
    public struct MediaObjectId: Codable, Equatable, Hashable {
        // An ID that's associated with the original media
        public var globalId: UUID
        
        // Properties specific to the media's location in the node
        public var nodeId: NodeId
        public var loopIndex: Int
        
        public init(globalId: UUID = UUID(),
                    nodeId: NodeId,
                    loopIndex: Int) {
            self.globalId = globalId
            self.nodeId = nodeId
            self.loopIndex = loopIndex
        }
    }
 
}

extension MediaObjectId_V3.MediaObjectId: StitchVersionedCodable {
    public init(previousInstance: MediaObjectId_V3.PreviousInstance) {
        self.init(nodeId: previousInstance.nodeId, loopIndex: previousInstance.loopIndex)
    }
}
