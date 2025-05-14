//
//  AsyncMediaValue_V31.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum AsyncMediaValue_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = AsyncMediaValue_V30.AsyncMediaValue
    // MARK: - endif
 
    public struct AsyncMediaValue: Hashable {
        public var id: UUID
        public var dataType: DataType_V31.DataType<MediaKey_V31.MediaKey>
        public var label: String
        
        public init(id: UUID,
                    dataType: DataType_V31.DataType<MediaKey_V31.MediaKey>,
                    label: String) {
            self.id = id
            self.dataType = dataType
            self.label = label
        }
    }
}

extension AsyncMediaValue_V31.AsyncMediaValue: StitchVersionedCodable {
    public init(previousInstance: AsyncMediaValue_V31.PreviousInstance) {
        switch previousInstance.dataType {
        case .computed:
            self.init(id: previousInstance.id,
                      dataType: .computed,
                      label: previousInstance.label)
        case .source(let x):
            self.init(id: previousInstance.id,
                      dataType: .source(.init(previousInstance: x)),
                      label: x.filename)
        }
    }
}
