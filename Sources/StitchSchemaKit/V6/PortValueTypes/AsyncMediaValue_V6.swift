//
//  AsyncMediaValue_V6.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation


public enum AsyncMediaValue_V6: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V6
    public typealias PreviousInstance = AsyncMediaValue_V5.AsyncMediaValue
    public typealias MediaObjectId = MediaObjectId_V1.MediaObjectId
    // MARK: - endif
 
    public struct AsyncMediaValue: Codable, Equatable, Hashable {
        public var id: MediaObjectId
        public var dataType: DataType_V6.DataType<MediaKey_V6.MediaKey>
        
        public init(id: MediaObjectId, dataType: DataType_V6.DataType<MediaKey_V6.MediaKey>) {
            self.id = id
            self.dataType = dataType
        }
        
        /// Optional initializer with NodeId and MediaKey
        public init(nodeId: NodeId,
             loopIndex: Int,
                    mediaKey: MediaKey_V6.MediaKey) {
            self.id = MediaObjectId(nodeId: nodeId, loopIndex: loopIndex)
            self.dataType = .source(mediaKey)
        }
        
        /// Optional initializer for computed type.
        public init(nodeId: NodeId, loopIndex: Int) {
            self.id = MediaObjectId(nodeId: nodeId, loopIndex: loopIndex)
            self.dataType = .computed
        }
        
        /// Optional initializer for default media, where loopIndex is always 0 but we need the static global id.
        public init(globalId: UUID, nodeId: NodeId, mediaKey: MediaKey_V6.MediaKey) {
            self.id = .init(globalId: globalId, nodeId: nodeId, loopIndex: 0)
            self.dataType = .source(mediaKey)
        }
    }
}

extension AsyncMediaValue_V6.AsyncMediaValue: StitchVersionedCodable {
    public init(previousInstance: AsyncMediaValue_V6.PreviousInstance) {
        
        var dataType: DataType_V6.DataType<MediaKey_V6.MediaKey>
        switch previousInstance.dataType {
        case .computed:
            dataType = .computed
        case .source(let x):
            dataType = .source(.init(previousInstance: x.self))
        }
        
        self.init(id: previousInstance.id,
                  dataType: dataType)
    }
}
