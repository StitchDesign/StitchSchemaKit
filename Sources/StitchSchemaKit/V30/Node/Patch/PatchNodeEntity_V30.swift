//
//  PatchNodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/12/23.
//

import Foundation

public enum PatchNodeEntity_V30: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V30
    public typealias PreviousInstance = PatchNodeEntity_V29.PatchNodeEntity
    public typealias SplitterNodeEntitySchema = SplitterNodeEntity_V30.SplitterNodeEntity
    public typealias Patch = Patch_V30.Patch
    public typealias UserVisibleType = UserVisibleType_V30.UserVisibleType
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V30.NodePortInputEntity]
    // MARK: - end

    public struct PatchNodeEntity: Hashable {
        public let id: UUID
        public let patch: Patch
        public var inputs: NodePortInputEntitySchemas
        public var canvasEntity: CanvasNodeEntity_V30.CanvasNodeEntity
        public let userVisibleType: UserVisibleType?
        public let splitterNode: SplitterNodeEntitySchema?
        public let mathExpression: String? // only for Math Expression
        
        public init(id: UUID,
                    patch: Patch,
                    inputs: NodePortInputEntitySchemas,
                    canvasEntity: CanvasNodeEntity_V30.CanvasNodeEntity,
                    userVisibleType: UserVisibleType?,
                    splitterNode: SplitterNodeEntitySchema?,
                    mathExpression: String?) {
            self.id = id
            self.patch = patch
            self.inputs = inputs
            self.canvasEntity = canvasEntity
            self.userVisibleType = userVisibleType
            self.splitterNode = splitterNode
            self.mathExpression = mathExpression
        }
    }
}

extension PatchNodeEntity_V30.PatchNodeEntity: StitchVersionedCodable {
    public init(previousInstance: PatchNodeEntity_V30.PreviousInstance) {
        self.init(id: previousInstance.id,
                  patch: .init(previousInstance: previousInstance.patch),
                  inputs:.init(previousElements: previousInstance.inputs),
                  canvasEntity: .init(previousInstance: previousInstance.canvasEntity),
                  userVisibleType: .init(previousInstance: previousInstance.userVisibleType),
                  splitterNode: .init(previousInstance: previousInstance.splitterNode),
                  mathExpression: previousInstance.mathExpression)
    }
}
