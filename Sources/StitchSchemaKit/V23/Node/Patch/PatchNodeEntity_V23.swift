//
//  PatchNodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/12/23.
//

import Foundation

public enum PatchNodeEntity_V23: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V23
    public typealias PreviousInstance = PatchNodeEntity_V22.PatchNodeEntity
    public typealias SplitterNodeEntitySchema = SplitterNodeEntity_V23.SplitterNodeEntity
    public typealias Patch = Patch_V23.Patch
    public typealias UserVisibleType = UserVisibleType_V23.UserVisibleType
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V23.NodePortInputEntity]
    // MARK: - end
    
    
   

    public struct PatchNodeEntity: Equatable {
        public let id: UUID
        public let patch: Patch
        public var inputs: NodePortInputEntitySchemas
        public var canvasEntity: CanvasNodeEntity_V23.CanvasNodeEntity
        public let userVisibleType: UserVisibleType?
        public let splitterNode: SplitterNodeEntitySchema?
        public let mathExpression: String? // only for Math Expression
        
        public init(id: UUID,
                    patch: Patch,
                    inputs: NodePortInputEntitySchemas,
                    canvasEntity: CanvasNodeEntity_V23.CanvasNodeEntity,
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

extension PatchNodeEntity_V23.PatchNodeEntity: StitchVersionedCodable {
    
    public init(previousInstance: PatchNodeEntity_V23.PreviousInstance) {
        
        var migratedInputs = PatchNodeEntity_V23.NodePortInputEntitySchemas(previousElements: previousInstance.inputs)
        
        // TODO: remove transform pack migration changes after v23
        if previousInstance.patch == .pack &&
            migratedInputs.count == 10 {
            migratedInputs = migratedInputs.dropLast()
        }
        
        self.init(id: previousInstance.id,
                  patch: .init(previousInstance: previousInstance.patch),
                  inputs: migratedInputs,
                  canvasEntity: .init(previousInstance: previousInstance.canvasEntity),
                  userVisibleType: .init(previousInstance: previousInstance.userVisibleType),
                  splitterNode: .init(previousInstance: previousInstance.splitterNode),
                  mathExpression: previousInstance.mathExpression)
    }
}
