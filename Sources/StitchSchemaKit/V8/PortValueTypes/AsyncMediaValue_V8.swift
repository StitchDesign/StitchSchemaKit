//
//  AsyncMediaValue_V8.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation


public enum AsyncMediaValue_V8: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V8
    public typealias PreviousInstance = AsyncMediaValue_V7.AsyncMediaValue
    public typealias MediaObjectId = MediaObjectId_V1.MediaObjectId
    // MARK: - endif
 
    public struct AsyncMediaValue: Codable, Equatable, Hashable {
        public var id: MediaObjectId
        public var dataType: DataType_V8.DataType<MediaKey_V8.MediaKey>
        
        public init(id: MediaObjectId, dataType: DataType_V8.DataType<MediaKey_V8.MediaKey>) {
            self.id = id
            self.dataType = dataType
        }
        
        /// Optional initializer with UUID and MediaKey
        public init(nodeId: UUID,
             loopIndex: Int,
                    mediaKey: MediaKey_V8.MediaKey) {
            self.id = MediaObjectId(nodeId: nodeId, loopIndex: loopIndex)
            self.dataType = .source(mediaKey)
        }
        
        /// Optional initializer for computed type.
        public init(nodeId: UUID, loopIndex: Int) {
            self.id = MediaObjectId(nodeId: nodeId, loopIndex: loopIndex)
            self.dataType = .computed
        }
        
        /// Optional initializer for default media, where loopIndex is always 0 but we need the static global id.
        public init(globalId: UUID, nodeId: UUID, mediaKey: MediaKey_V8.MediaKey) {
            self.id = .init(globalId: globalId, nodeId: nodeId, loopIndex: 0)
            self.dataType = .source(mediaKey)
        }
    }
}

extension AsyncMediaValue_V8.AsyncMediaValue: StitchVersionedCodable {
    public init(previousInstance: AsyncMediaValue_V8.PreviousInstance) {
        
        var dataType: DataType_V8.DataType<MediaKey_V8.MediaKey>
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
