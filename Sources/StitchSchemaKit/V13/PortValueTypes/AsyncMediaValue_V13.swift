//
//  AsyncMediaValue_V13.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation


public enum AsyncMediaValue_V13: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V13
    public typealias PreviousInstance = AsyncMediaValue_V12.AsyncMediaValue
    public typealias MediaObjectId = MediaObjectId_V1.MediaObjectId
    // MARK: - endif
 
    public struct AsyncMediaValue: Codable, Equatable, Hashable {
        public var id: MediaObjectId
        public var dataType: DataType_V13.DataType<MediaKey_V13.MediaKey>
        
        public init(id: MediaObjectId, dataType: DataType_V13.DataType<MediaKey_V13.MediaKey>) {
            self.id = id
            self.dataType = dataType
        }
        
        /// Optional initializer with UUID and MediaKey_V13.MediaKey.
        public init(nodeId: UUID,
             loopIndex: Int,
             mediaKey: MediaKey_V13.MediaKey) {
            self.id = MediaObjectId(nodeId: nodeId, loopIndex: loopIndex)
            self.dataType = .source(mediaKey)
        }
        
        /// Optional initializer for computed type.
        public init(nodeId: UUID, loopIndex: Int) {
            self.id = MediaObjectId(nodeId: nodeId, loopIndex: loopIndex)
            self.dataType = .computed
        }
        
        /// Optional initializer for default media, where loopIndex is always 0 but we need the static global id.
        public init(globalId: UUID, nodeId: UUID, mediaKey: MediaKey_V13.MediaKey) {
            self.id = .init(globalId: globalId, nodeId: nodeId, loopIndex: 0)
            self.dataType = .source(mediaKey)
        }
    }
}

extension AsyncMediaValue_V13.AsyncMediaValue: StitchVersionedCodable {
    public init(previousInstance: AsyncMediaValue_V13.PreviousInstance) {
        
        var dataType: DataType_V13.DataType<MediaKey_V13.MediaKey>
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
