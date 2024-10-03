//
//  PatchNodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/12/23.
//

import Foundation

public enum PatchNodeEntity_V2: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V2
    public typealias PreviousInstance = PatchNodeEntity_V1.PatchNodeEntity
    public typealias SplitterNodeEntitySchema = SplitterNodeEntity_V2.SplitterNodeEntity
    public typealias Patch = Patch_V2.Patch
    public typealias UserVisibleType = UserVisibleType_V2.UserVisibleType
    // MARK: - end

    public struct PatchNodeEntity: Equatable {
        public let id: UUID
        public let patch: Patch
        public let userVisibleType: UserVisibleType?
        public let splitterNode: SplitterNodeEntitySchema?
        
        public init(id: UUID,
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

extension PatchNodeEntity_V2.PatchNodeEntity: StitchVersionedCodable {
    public init(previousInstance: PatchNodeEntity_V2.PreviousInstance) {
        self.init(id: previousInstance.id,
                  patch:
                    PatchNodeEntity_V2.Patch(previousInstance: previousInstance.patch),
                  userVisibleType: 
                    PatchNodeEntity_V2.UserVisibleType(previousInstance: previousInstance.userVisibleType),
                  splitterNode:
                    PatchNodeEntity_V2.SplitterNodeEntitySchema(previousInstance: previousInstance.splitterNode))
    }
}
