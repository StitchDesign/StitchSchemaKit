//
//  PatchNodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/12/23.
//

import Foundation

public enum PatchNodeEntity_V26: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V26
    public typealias PreviousInstance = PatchNodeEntity_V25.PatchNodeEntity
    public typealias SplitterNodeEntitySchema = SplitterNodeEntity_V26.SplitterNodeEntity
    public typealias Patch = Patch_V26.Patch
    public typealias UserVisibleType = UserVisibleType_V26.UserVisibleType
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V26.NodePortInputEntity]
    // MARK: - end

    public struct PatchNodeEntity: Hashable {
        public let id: UUID
        public let patch: Patch
        public var inputs: NodePortInputEntitySchemas
        public var canvasEntity: CanvasNodeEntity_V26.CanvasNodeEntity
        public let userVisibleType: UserVisibleType?
        public let splitterNode: SplitterNodeEntitySchema?
        public let mathExpression: String? // only for Math Expression
        
        public init(id: UUID,
                    patch: Patch,
                    inputs: NodePortInputEntitySchemas,
                    canvasEntity: CanvasNodeEntity_V26.CanvasNodeEntity,
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

extension PatchNodeEntity_V26.PatchNodeEntity: StitchVersionedCodable {
    public init(previousInstance: PatchNodeEntity_V26.PreviousInstance) {
        self.init(id: previousInstance.id,
                  patch: .init(previousInstance: previousInstance.patch),
                  inputs:.init(previousElements: previousInstance.inputs),
                  canvasEntity: .init(previousInstance: previousInstance.canvasEntity),
                  userVisibleType: .init(previousInstance: previousInstance.userVisibleType),
                  splitterNode: .init(previousInstance: previousInstance.splitterNode),
                  mathExpression: previousInstance.mathExpression)
    }
}
