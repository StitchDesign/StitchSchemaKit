//
//  PatchNodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/12/23.
//

import Foundation

public enum PatchNodeEntity_V21: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V21
    public typealias PreviousInstance = PatchNodeEntity_V20.PatchNodeEntity
    public typealias SplitterNodeEntitySchema = SplitterNodeEntity_V21.SplitterNodeEntity
    public typealias Patch = Patch_V21.Patch
    public typealias UserVisibleType = UserVisibleType_V21.UserVisibleType
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V21.NodePortInputEntity]
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

extension PatchNodeEntity_V21.PatchNodeEntity: StitchVersionedCodable {
    public init(previousInstance: PatchNodeEntity_V21.PreviousInstance) {
        self.init(id: previousInstance.id,
                  patch:
                    PatchNodeEntity_V21.Patch(previousInstance: previousInstance.patch),
                  // We'll fix input from NodeEntity migration
                  inputs: [],
                  
                  // We'll also fix this
                  canvasEntity: .init(position: .zero,
                                      zIndex: .zero,
                                      parentGroupNodeId: nil),
                  userVisibleType: 
                    PatchNodeEntity_V21.UserVisibleType(previousInstance: previousInstance.userVisibleType),
                  splitterNode:
                    PatchNodeEntity_V21.SplitterNodeEntitySchema(previousInstance: previousInstance.splitterNode), 
                  mathExpression: nil)
    }
}
