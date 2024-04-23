//
//  AsyncMediaValue_V12.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation


public enum AsyncMediaValue_V12: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V12
    public typealias PreviousInstance = AsyncMediaValue_V11.AsyncMediaValue
    // MARK: - endif
 
    public struct AsyncMediaValue: Codable, Equatable, Hashable {
        public var id: MediaObjectId
        public var dataType: DataType<MediaKey>
        
        public init(id: MediaObjectId, dataType: DataType<MediaKey>) {
            self.id = id
            self.dataType = dataType
        }
        
        /// Optional initializer with NodeId and MediaKey.
        public init(nodeId: NodeId,
             loopIndex: Int,
             mediaKey: MediaKey) {
            self.id = MediaObjectId(nodeId: nodeId, loopIndex: loopIndex)
            self.dataType = .source(mediaKey)
        }
        
        /// Optional initializer for computed type.
        public init(nodeId: NodeId, loopIndex: Int) {
            self.id = MediaObjectId(nodeId: nodeId, loopIndex: loopIndex)
            self.dataType = .computed
        }
        
        /// Optional initializer for default media, where loopIndex is always 0 but we need the static global id.
        public init(globalId: UUID, nodeId: NodeId, mediaKey: MediaKey) {
            self.id = .init(globalId: globalId, nodeId: nodeId, loopIndex: 0)
            self.dataType = .source(mediaKey)
        }
    }


}

extension AsyncMediaValue_V12.AsyncMediaValue: StitchVersionedCodable {
    public init(previousInstance: AsyncMediaValue_V12.PreviousInstance) {
        self.init(id: previousInstance.id, dataType: previousInstance.dataType)
    }
}
