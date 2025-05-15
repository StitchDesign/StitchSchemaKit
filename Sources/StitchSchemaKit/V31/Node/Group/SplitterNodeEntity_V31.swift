//
//  SplitterNodeEntity_V31.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/30/23.
//

import Foundation

public enum SplitterNodeEntity_V31: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V31
    public typealias PreviousInstance = SplitterNodeEntity_V30.SplitterNodeEntity
    public typealias SplitterType = SplitterType_V31.SplitterType
    // MARK: - end

    public struct SplitterNodeEntity: Hashable {
        public let id: UUID
        // Dates used to sort ports in group node view
        public var lastModifiedDate: Date
        public let type: SplitterType
        
        public init(id: UUID, lastModifiedDate: Date, type: SplitterType) {
            self.id = id
            self.lastModifiedDate = lastModifiedDate
            self.type = type
        }
    }
}

extension SplitterNodeEntity_V31.SplitterNodeEntity: StitchVersionedCodable {
    public init(previousInstance: SplitterNodeEntity_V31.PreviousInstance) {
        self.init(id: previousInstance.id,
                  lastModifiedDate: previousInstance.lastModifiedDate,
                  type: 
                    SplitterNodeEntity_V31.SplitterType(previousInstance: previousInstance.type))
    }
}
