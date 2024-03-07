//
//  PatchNodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/12/23.
//

import Foundation

public enum PatchNodeEntity_V4: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V4
    public typealias PreviousInstance = PatchNodeEntity_V3.PatchNodeEntity
    public typealias SplitterNodeEntitySchema = SplitterNodeEntity_V4.SplitterNodeEntity
    public typealias Patch = Patch_V4.Patch
    public typealias UserVisibleType = UserVisibleType_V4.UserVisibleType
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

extension PatchNodeEntity_V4.PatchNodeEntity: StitchVersionedCodable {
    public init(previousInstance: PatchNodeEntity_V4.PreviousInstance) {
        self.init(id: previousInstance.id,
                  patch:
                    PatchNodeEntity_V4.Patch(previousInstance: previousInstance.patch),
                  userVisibleType: 
                    PatchNodeEntity_V4.UserVisibleType(previousInstance: previousInstance.userVisibleType),
                  splitterNode:
                    PatchNodeEntity_V4.SplitterNodeEntitySchema(previousInstance: previousInstance.splitterNode))
    }
}
