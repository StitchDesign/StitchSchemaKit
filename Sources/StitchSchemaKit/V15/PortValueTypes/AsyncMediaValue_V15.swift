//
//  AsyncMediaValue_V15.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation


public enum AsyncMediaValue_V15: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V15
    public typealias PreviousInstance = AsyncMediaValue_V14.AsyncMediaValue
    // MARK: - endif
 
    public struct AsyncMediaValue: Equatable {
        public static func == (lhs: Self, rhs: Self) -> Bool {
            lhs.id == rhs.id &&
            lhs.dataType == rhs.dataType
        }
        
        public var id: MediaObjectId
        public var dataType: DataType<MediaKey>
        public var mediaObject: Any?
        
        public init(id: MediaObjectId, 
                    dataType: DataType<MediaKey>) {
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

extension AsyncMediaValue_V15.AsyncMediaValue: Codable {
    enum CodingKeys: String, CodingKey {
        case id, dataType
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let id = try container.decode(MediaObjectId.self, forKey: .id)
        let dataType = try container.decode(DataType<MediaKey>.self, forKey: .dataType)
        self.init(id: id,
                  dataType: dataType)
    }
    
    public func encoder(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(dataType, forKey: .dataType)
    }
}

extension AsyncMediaValue_V15.AsyncMediaValue: StitchVersionedCodable {
    public init(previousInstance: AsyncMediaValue_V15.PreviousInstance) {
        self.init(id: previousInstance.id, dataType: previousInstance.dataType)
    }
}
