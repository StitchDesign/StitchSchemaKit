//
//  SplitterNodeEntity_V1.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/30/23.
//

import Foundation

public enum SplitterNodeEntity_V1: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.SplitterNodeEntity
    public typealias SplitterType = SplitterType_V1.SplitterType
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

extension SplitterNodeEntity_V1.SplitterNodeEntity: StitchVersionedCodable {
    public init(previousInstance: PatchNodeEntity_V1.PreviousInstance) {
        fatalError()
    }

//    init(from viewModel: SplitterNodeEntity_V1.SplitterNodeEntity) {
//        // Not actually used
//        fatalError()
//    }
}
