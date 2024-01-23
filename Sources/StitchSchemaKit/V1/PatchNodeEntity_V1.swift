//
//  PatchNodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/12/23.
//

import Foundation

enum PatchNodeEntity_V1: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V1
    typealias PreviousInstance = Self.PatchNodeEntity
    typealias SplitterNodeEntitySchema = SplitterNodeEntity_V1
    // MARK: - end

    struct PatchNodeEntity {
        let id: NodeId
        let patch: Patch
        let userVisibleType: UserVisibleType?
        let splitterNode: SplitterNodeEntitySchema.SplitterNodeEntity?
    }
}

extension PatchNodeEntity_V1.PatchNodeEntity: StitchVersionedCodable {
    init(previousInstance: PatchNodeEntity_V1.PreviousInstance) {
        fatalError()
    }

//    init(from viewModel: PatchNodeViewModel) {
//        self.id = viewModel.id
//        self.patch = viewModel.patch
//        self.userVisibleType = viewModel.userVisibleType
//        self.splitterNode = viewModel.splitterNode
//    }
}
