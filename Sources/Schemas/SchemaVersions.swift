//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
typealias CurrentStitchDocument = StitchDocument_V1
typealias CurrentNodeEntity = NodeEntity_V1
typealias CurrentPatchNodeEntity = PatchNodeEntity_V1
typealias CurrentLayerNodeEntity = LayerNodeEntity_V1
typealias CurrentNodePortInputEntity = NodePortInputEntity_V1
typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V1
// MARK: - end

typealias StitchDocument = CurrentStitchDocument.StitchDocument
typealias NodeEntity = CurrentNodeEntity.NodeEntity
typealias PatchNodeEntity = CurrentPatchNodeEntity.PatchNodeEntity
typealias LayerNodeEntity = CurrentLayerNodeEntity.LayerNodeEntity
typealias NodePortInputEntity = CurrentNodePortInputEntity.NodePortInputEntity
typealias SplitterNodeEntity = CurrentSplitterNodeEntity.SplitterNodeEntity

enum StitchSchemaVersion: Int, VersionType {
    case _V1 = 1
}

struct StitchDocumentVersion: StitchSchemaVersionType {
    typealias NewestVersionType = CurrentStitchDocument.StitchDocument

    var version: StitchSchemaVersion

    static func getCodableType(from version: StitchSchemaVersion) -> any StitchVersionedCodable.Type {
        switch version {
        case ._V1:
            return StitchDocument_V1.StitchDocument.self
        }
    }
}

// extension CurrentStitchDocument.StitchDocument_Codable {
//    func convertToSwiftData() -> StitchDocument {
//        let nodes = self.nodes.map { $0.convertToSwiftData() }
//        let doc = StitchDocument(nodes: nodes)
//        return doc
//    }
// }
//
// extension CurrentNodeEntity.NodeEntity_Codable {
//    func convertToSwiftData() -> NodeEntity {
//        NodeEntity(id: self.nodeId,
//                   position: self.position,
//                   zIndex: self.zIndex,
//                   customName: self.customName,
//                   parentGroupNodeId: self.parentGroupNodeId,
//                   patchNodeEntity: self.patchNodeEntity?.convertToSwiftData(),
//                   // Nil for now
//                   layerNodeEntity: nil)
//    }
// }
//
// extension CurrentPatchNodeEntity.PatchNodeEntity_Codable {
//    func convertToSwiftData() -> PatchNodeEntity {
//        PatchNodeEntity(patch: self.patch,
//                        userVisibleType: self.userVisibleType,
//                        // Nil for now
//                        splitterNode: nil)
//    }
// }
//
// extension CurrentNodePortInputEntity.NodePortInputEntity_Codable {
//    func convertToSwiftData() -> NodePortInputEntity {
//        NodePortInputEntity(portId: self.portId,
//                            label: self.label,
//                            // TODO: blank for now
//                            valueEntities: [],
//                            connectedOutputEntity: nil)
//    }
// }
