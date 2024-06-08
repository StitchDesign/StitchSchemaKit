//
//  PatchNodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/12/23.
//

import Foundation

public enum PatchNodeEntity_V8: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V8
    public typealias PreviousInstance = PatchNodeEntity_V7.PatchNodeEntity
    public typealias SplitterNodeEntitySchema = SplitterNodeEntity_V8.SplitterNodeEntity
    public typealias Patch = Patch_V8.Patch
    public typealias UserVisibleType = UserVisibleType_V8.UserVisibleType
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

extension PatchNodeEntity_V8.PatchNodeEntity: StitchVersionedCodable {
    public init(previousInstance: PatchNodeEntity_V8.PreviousInstance) {
        self.init(id: previousInstance.id,
                  patch:
                    PatchNodeEntity_V8.Patch(previousInstance: previousInstance.patch),
                  userVisibleType: 
                    PatchNodeEntity_V8.UserVisibleType(previousInstance: previousInstance.userVisibleType),
                  splitterNode:
                    PatchNodeEntity_V8.SplitterNodeEntitySchema(previousInstance: previousInstance.splitterNode), 
                  mathExpression: nil)
    }
}
