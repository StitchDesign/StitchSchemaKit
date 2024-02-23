//
//  PatchNodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/12/23.
//

import Foundation

public enum PatchNodeEntity_V1: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.PatchNodeEntity
    public typealias SplitterNodeEntitySchema = SplitterNodeEntity_V1.SplitterNodeEntity
    public typealias Patch = Patch_V1.Patch
    public typealias UserVisibleType = UserVisibleType_V1.UserVisibleType
    // MARK: - end

    public struct PatchNodeEntity: Equatable {
        public let id: NodeId
        public let patch: Patch
        public let userVisibleType: UserVisibleType?
        public let splitterNode: SplitterNodeEntitySchema?
        
        public init(id: NodeId,
             patch: Patch,
             userVisibleType: UserVisibleType?,
             splitterNode: SplitterNodeEntitySchema?) {
            self.id = id
            self.patch = patch
            self.userVisibleType = userVisibleType
            self.splitterNode = splitterNode
        }
    }
}

extension PatchNodeEntity_V1.PatchNodeEntity: StitchVersionedCodable {
    public init(previousInstance: PatchNodeEntity_V1.PreviousInstance) {
        fatalError()
    }

//    init(from viewModel: PatchNodeViewModel) {
//        self.id = viewModel.id
//        self.patch = viewModel.patch
//        self.userVisibleType = viewModel.userVisibleType
//        self.splitterNode = viewModel.splitterNode
//    }
}
