//
//  AsyncMediaValue_V25.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum AsyncMediaValue_V25: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V25
    public typealias PreviousInstance = AsyncMediaValue_V24.AsyncMediaValue
    // MARK: - endif
 
    public struct AsyncMediaValue: Equatable {
    
        public static func == (lhs: Self, rhs: Self) -> Bool {
            lhs.id == rhs.id &&
            lhs.dataType == rhs.dataType &&
            lhs._mediaObject == nil && rhs._mediaObject == nil
        }
        
        public var id: UUID
        public var dataType: DataType_V25.DataType<MediaKey_V25.MediaKey>
        public var _mediaObject: Any?
        
        /// **DO NOT USE THIS INITIALIZER FROM STITCH!.**
        public init(id: UUID,
                    dataType: DataType_V25.DataType<MediaKey_V25.MediaKey>,
                    _mediaObject: Any?) {
            self.id = id
            self.dataType = dataType
            self._mediaObject = _mediaObject
        }
    }
}

extension AsyncMediaValue_V25.AsyncMediaValue: Codable {
    enum CodingKeys: String, CodingKey {
        case id, dataType
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let id = try container.decode(UUID.self, forKey: .id)
        let dataType = try container.decode(DataType_V25.DataType<MediaKey_V25.MediaKey>.self, forKey: .dataType)
        
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

extension AsyncMediaValue_V25.AsyncMediaValue: StitchVersionedCodable {
    public init(previousInstance: AsyncMediaValue_V25.PreviousInstance) {

        var dataType: DataType_V25.DataType<MediaKey_V25.MediaKey>
        switch previousInstance.dataType {
        case .computed:
            dataType = .computed
        case .source(let x):
            dataType = .source(.init(previousInstance: x.self))
        }
        
        self.init(id: previousInstance.id,
                  dataType: dataType,
                  _mediaObject: nil)
    }
}
