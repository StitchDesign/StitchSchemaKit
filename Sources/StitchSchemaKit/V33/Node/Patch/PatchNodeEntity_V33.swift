//
//  PatchNodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/12/23.
//

import Foundation

public enum PatchNodeEntity_V33: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V33
    public typealias PreviousInstance = PatchNodeEntity_V32.PatchNodeEntity
    public typealias SplitterNodeEntitySchema = SplitterNodeEntity_V33.SplitterNodeEntity
    public typealias Patch = Patch_V33.Patch
    public typealias UserVisibleType = UserVisibleType_V33.UserVisibleType
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V33.NodePortInputEntity]
    public typealias JavaScriptNodeSettings = JavaScriptNodeSettings_V33.JavaScriptNodeSettings
    // MARK: - end

    public struct PatchNodeEntity: Hashable {
        public let id: UUID
        public let patch: Patch
        public var inputs: NodePortInputEntitySchemas
        public var canvasEntity: CanvasNodeEntity_V33.CanvasNodeEntity
        public let userVisibleType: UserVisibleType?
        public let splitterNode: SplitterNodeEntitySchema?
        public let mathExpression: String? // only for Math Expression
        public let javaScriptNodeSettings: JavaScriptNodeSettings?
        
        public init(id: UUID,
                    patch: Patch,
                    inputs: NodePortInputEntitySchemas,
                    canvasEntity: CanvasNodeEntity_V33.CanvasNodeEntity,
                    userVisibleType: UserVisibleType?,
                    splitterNode: SplitterNodeEntitySchema?,
                    mathExpression: String?,
                    javaScriptNodeSettings: JavaScriptNodeSettings?) {
            self.id = id
            self.patch = patch
            self.inputs = inputs
            self.canvasEntity = canvasEntity
            self.userVisibleType = userVisibleType
            self.splitterNode = splitterNode
            self.mathExpression = mathExpression
            self.javaScriptNodeSettings = javaScriptNodeSettings
        }
    }
}

extension PatchNodeEntity_V33.PatchNodeEntity: StitchVersionedCodable {
    public init(previousInstance: PatchNodeEntity_V33.PreviousInstance) {
        self.init(
            id: previousInstance.id,
            patch: .init(previousInstance: previousInstance.patch),
            inputs:.init(previousElements: previousInstance.inputs),
            canvasEntity: .init(previousInstance: previousInstance.canvasEntity),
            userVisibleType: .init(previousInstance: previousInstance.userVisibleType),
            splitterNode: .init(previousInstance: previousInstance.splitterNode),
            mathExpression: previousInstance.mathExpression,
            javaScriptNodeSettings: .init(previousInstance: previousInstance.javaScriptNodeSettings)
        )
    }
}
