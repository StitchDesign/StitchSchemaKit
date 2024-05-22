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
//    public typealias MediaObjectId = MediaObjectId_V15.MediaObjectId
    // MARK: - endif
 
    public struct AsyncMediaValue: Equatable {
        public static func == (lhs: Self, rhs: Self) -> Bool {
            lhs.id == rhs.id &&
            lhs.dataType == rhs.dataType &&
            lhs._mediaObject == nil && rhs._mediaObject == nil
        }
        
        public var id: UUID
        public var dataType: DataType<MediaKey>
        public var _mediaObject: Any?
        
        /// **DO NOT USE THIS INITIALIZER FROM STITCH!.**
        public init(id: MediaObjectId,
                    dataType: DataType<MediaKey>,
                    _mediaObject: Any?) {
            self.id = id
            self.dataType = dataType
            self._mediaObject = _mediaObject
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
                  dataType: dataType,
                  _mediaObject: nil)
    }
    
    public func encoder(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(dataType, forKey: .dataType)
    }
}

extension AsyncMediaValue_V15.AsyncMediaValue: StitchVersionedCodable {
    public init(previousInstance: AsyncMediaValue_V15.PreviousInstance) {
        self.init(id: previousInstance.id.globalId,
                  dataType: previousInstance.dataType,
                  _mediaObject: nil)
    }
}
