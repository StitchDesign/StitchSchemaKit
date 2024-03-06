//
//  SplitterNodeEntity_V3.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/30/23.
//

import Foundation

public enum SplitterNodeEntity_V3: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V3
    public typealias PreviousInstance = SplitterNodeEntity_V2.SplitterNodeEntity
    public typealias SplitterType = SplitterType_V3.SplitterType
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

extension SplitterNodeEntity_V3.SplitterNodeEntity: StitchVersionedCodable {
    public init(previousInstance: SplitterNodeEntity_V3.PreviousInstance) {
        self.init(id: previousInstance.id,
                  lastModifiedDate: previousInstance.lastModifiedDate,
                  type: 
                    SplitterNodeEntity_V3.SplitterType(previousInstance: previousInstance.type))
    }
}
