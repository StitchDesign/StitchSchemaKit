//
//  SplitterNodeEntity_V21.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/30/23.
//

import Foundation

public enum SplitterNodeEntity_V21: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V21
    public typealias PreviousInstance = SplitterNodeEntity_V20.SplitterNodeEntity
    public typealias SplitterType = SplitterType_V21.SplitterType
    // MARK: - end

    public struct SplitterNodeEntity: Equatable {
        public let id: UUID
        // Dates used to sort ports in group node view
        public let lastModifiedDate: Date
        public let type: SplitterType
        
        public init(id: UUID, lastModifiedDate: Date, type: SplitterType) {
            self.id = id
            self.lastModifiedDate = lastModifiedDate
            self.type = type
        }
    }
}

extension SplitterNodeEntity_V21.SplitterNodeEntity: StitchVersionedCodable {
    public init(previousInstance: SplitterNodeEntity_V21.PreviousInstance) {
        self.init(id: previousInstance.id,
                  lastModifiedDate: previousInstance.lastModifiedDate,
                  type: 
                    SplitterNodeEntity_V21.SplitterType(previousInstance: previousInstance.type))
    }
}
