//
//  SplitterNodeEntity_V27.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/30/23.
//

import Foundation

public enum SplitterNodeEntity_V27: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V27
    public typealias PreviousInstance = SplitterNodeEntity_V26.SplitterNodeEntity
    public typealias SplitterType = SplitterType_V27.SplitterType
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

extension SplitterNodeEntity_V27.SplitterNodeEntity: StitchVersionedCodable {
    public init(previousInstance: SplitterNodeEntity_V27.PreviousInstance) {
        self.init(id: previousInstance.id,
                  lastModifiedDate: previousInstance.lastModifiedDate,
                  type: 
                    SplitterNodeEntity_V27.SplitterType(previousInstance: previousInstance.type))
    }
}
