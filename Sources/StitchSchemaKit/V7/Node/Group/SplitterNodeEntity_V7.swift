//
//  SplitterNodeEntity_V7.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/30/23.
//

import Foundation

public enum SplitterNodeEntity_V7: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V7
    public typealias PreviousInstance = SplitterNodeEntity_V6.SplitterNodeEntity
    public typealias SplitterType = SplitterType_V7.SplitterType
    // MARK: - end

    public struct SplitterNodeEntity: Equatable {
        public let id: NodeId
        // Dates used to sort ports in group node view
        public let lastModifiedDate: Date
        public let type: SplitterType
        
        public init(id: NodeId, lastModifiedDate: Date, type: SplitterType) {
            self.id = id
            self.lastModifiedDate = lastModifiedDate
            self.type = type
        }
    }
}

extension SplitterNodeEntity_V7.SplitterNodeEntity: StitchVersionedCodable {
    public init(previousInstance: SplitterNodeEntity_V7.PreviousInstance) {
        self.init(id: previousInstance.id,
                  lastModifiedDate: previousInstance.lastModifiedDate,
                  type: 
                    SplitterNodeEntity_V7.SplitterType(previousInstance: previousInstance.type))
    }
}
