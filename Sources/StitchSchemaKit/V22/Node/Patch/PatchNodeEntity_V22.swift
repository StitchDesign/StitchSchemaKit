//
//  PatchNodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/12/23.
//

import Foundation

public enum PatchNodeEntity_V22: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V22
    public typealias PreviousInstance = PatchNodeEntity_V21.PatchNodeEntity
    public typealias SplitterNodeEntitySchema = SplitterNodeEntity_V22.SplitterNodeEntity
    public typealias Patch = Patch_V22.Patch
    public typealias UserVisibleType = UserVisibleType_V22.UserVisibleType
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V22.NodePortInputEntity]
    // MARK: - end

    public struct PatchNodeEntity: Equatable {
        public let id: UUID
        public let patch: Patch
        public var inputs: NodePortInputEntitySchemas
        public var canvasEntity: CanvasNodeEntity
        public let userVisibleType: UserVisibleType?
        public let splitterNode: SplitterNodeEntitySchema?
        public let mathExpression: String? // only for Math Expression
        
        public init(id: UUID,
                    patch: Patch,
                    inputs: NodePortInputEntitySchemas,
                    canvasEntity: CanvasNodeEntity,
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

extension PatchNodeEntity_V22.PatchNodeEntity: StitchVersionedCodable {
    public init(previousInstance: PatchNodeEntity_V22.PreviousInstance) {
        self.id = previousInstance.id
        self.patch = .init(previousInstance: previousInstance.patch)
        self.inputs = .init(previousElements: previousInstance.inputs)
        self.canvasEntity = .init(previousInstance: previousInstance.canvasEntity)
        self.userVisibleType = .init(previousInstance: previousInstance.userVisibleType)
        self.splitterNode = .init(previousInstance: previousInstance.splitterNode)
        self.mathExpression = previousInstance.mathExpression
    }
}
