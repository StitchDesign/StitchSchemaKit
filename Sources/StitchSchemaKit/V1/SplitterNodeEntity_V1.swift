//
//  SplitterNodeEntity_V1.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/30/23.
//

import Foundation

enum SplitterNodeEntity_V1: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V1
    typealias PreviousInstance = Self.SplitterNodeEntity
    // MARK: - end

    struct SplitterNodeEntity {
        let id: NodeId
        // Dates used to sort ports in group node view
        let lastModifiedDate: Date
        let type: SplitterType
    }
}

extension SplitterNodeEntity_V1.SplitterNodeEntity: StitchVersionedCodable {
    init(previousInstance: PatchNodeEntity_V1.PreviousInstance) {
        fatalError()
    }

//    init(from viewModel: SplitterNodeEntity_V1.SplitterNodeEntity) {
//        // Not actually used
//        fatalError()
//    }
}
