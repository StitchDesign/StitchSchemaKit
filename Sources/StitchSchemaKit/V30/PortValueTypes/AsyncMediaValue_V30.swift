//
//  AsyncMediaValue_V30.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum AsyncMediaValue_V30: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V30
    public typealias PreviousInstance = AsyncMediaValue_V29.AsyncMediaValue
    // MARK: - endif
 
    public struct AsyncMediaValue: Hashable {
        public var id: UUID
        public var dataType: DataType_V30.DataType<MediaKey_V30.MediaKey>
        
        public init(id: UUID,
                    dataType: DataType_V30.DataType<MediaKey_V30.MediaKey>) {
            self.id = id
            self.dataType = dataType
        }
    }
}

extension AsyncMediaValue_V30.AsyncMediaValue: StitchVersionedCodable {
    public init(previousInstance: AsyncMediaValue_V30.PreviousInstance) {

        var dataType: DataType_V30.DataType<MediaKey_V30.MediaKey>
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
