//
//  SplitterNodeEntity_V28.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/30/23.
//

import Foundation

public enum SplitterNodeEntity_V28: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V28
    public typealias PreviousInstance = SplitterNodeEntity_V27.SplitterNodeEntity
    public typealias SplitterType = SplitterType_V28.SplitterType
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

extension SplitterNodeEntity_V28.SplitterNodeEntity: StitchVersionedCodable {
    public init(previousInstance: SplitterNodeEntity_V28.PreviousInstance) {
        self.init(id: previousInstance.id,
                  lastModifiedDate: previousInstance.lastModifiedDate,
                  type: 
                    SplitterNodeEntity_V28.SplitterType(previousInstance: previousInstance.type))
    }
}
