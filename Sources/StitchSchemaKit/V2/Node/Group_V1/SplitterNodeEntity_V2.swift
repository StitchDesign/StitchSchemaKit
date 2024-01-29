//
//  SplitterNodeEntity_V2.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/30/23.
//

import Foundation

public enum SplitterNodeEntity_V2: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V2
    public typealias PreviousInstance = Self.SplitterNodeEntity
    // MARK: - end

    public struct SplitterNodeEntity {
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

extension SplitterNodeEntity_V2.SplitterNodeEntity: StitchVersionedCodable {
    public init(previousInstance: PatchNodeEntity_V2.PreviousInstance) {
        fatalError()
    }

//    init(from viewModel: SplitterNodeEntity_V2.SplitterNodeEntity) {
//        // Not actually used
//        fatalError()
//    }
}
