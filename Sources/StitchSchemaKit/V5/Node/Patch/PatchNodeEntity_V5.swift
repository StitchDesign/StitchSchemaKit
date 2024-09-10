//
//  PatchNodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/12/23.
//

import Foundation

public enum PatchNodeEntity_V5: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V5
    public typealias PreviousInstance = PatchNodeEntity_V4.PatchNodeEntity
    public typealias SplitterNodeEntitySchema = SplitterNodeEntity_V5.SplitterNodeEntity
    public typealias Patch = Patch_V5.Patch
    public typealias UserVisibleType = UserVisibleType_V5.UserVisibleType
    // MARK: - end

    public struct PatchNodeEntity: Equatable {
        public let id: UUID
        public let patch: Patch
        public let userVisibleType: UserVisibleType?
        public let splitterNode: SplitterNodeEntitySchema?
        public let mathExpression: String? // only for Math Expression
        
        public init(id: UUID,
                    patch: Patch,
                    userVisibleType: UserVisibleType?,
                    splitterNode: SplitterNodeEntitySchema?,
                    mathExpression: String?) {
            self.id = id
            self.patch = patch
            self.userVisibleType = userVisibleType
            self.splitterNode = splitterNode
            self.mathExpression = mathExpression
        }
    }
}

extension PatchNodeEntity_V5.PatchNodeEntity: StitchVersionedCodable {
    public init(previousInstance: PatchNodeEntity_V5.PreviousInstance) {
        self.init(id: previousInstance.id,
                  patch:
                    PatchNodeEntity_V5.Patch(previousInstance: previousInstance.patch),
                  userVisibleType: 
                    PatchNodeEntity_V5.UserVisibleType(previousInstance: previousInstance.userVisibleType),
                  splitterNode:
                    PatchNodeEntity_V5.SplitterNodeEntitySchema(previousInstance: previousInstance.splitterNode), 
                  mathExpression: nil)
    }
}
