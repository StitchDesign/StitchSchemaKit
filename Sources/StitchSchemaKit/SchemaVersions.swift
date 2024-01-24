//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentStitchDocument = StitchDocument_V1
public typealias CurrentNodeEntity = NodeEntity_V1
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V1
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V1
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V1
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V1
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V1
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V1
public typealias CurrentSidebarLayerType = SidebarLayerType_V1
public typealias CurrentNodeKind = NodeKind_V1

public typealias CurrentPoint4D = Point4D_V1
// MARK: - end

public typealias StitchDocument = CurrentStitchDocument.StitchDocument
public typealias NodeEntity = CurrentNodeEntity.NodeEntity
public typealias PatchNodeEntity = CurrentPatchNodeEntity.PatchNodeEntity
public typealias LayerNodeEntity = CurrentLayerNodeEntity.LayerNodeEntity
public typealias NodePortInputEntity = CurrentNodePortInputEntity.NodePortInputEntity
public typealias SplitterNodeEntity = CurrentSplitterNodeEntity.SplitterNodeEntity
public typealias NodeIOCoordinate = CurrentNodeIOCoordinate.NodeIOCoordinate
public typealias GroupNodeId = CurrentGroupNodeIDCoordinate.GroupNodeId
public typealias SidebarLayerType = CurrentSidebarLayerType.SidebarLayerType
public typealias NodeKind = CurrentNodeKind.NodeKind

public typealias Point4D = CurrentPoint4D.Point4D


public enum StitchSchemaVersion: Int, VersionType {
    case _V1 = 1
}

public protocol VersionType: CaseIterable, Codable, Comparable, RawRepresentable {}

extension VersionType where RawValue: Comparable {
    public static func < (a: Self, b: Self) -> Bool {
        return a.rawValue < b.rawValue
    }
}

public struct StitchDocumentVersion: StitchSchemaVersionType {
    public typealias NewestVersionType = CurrentStitchDocument.StitchDocument
    
    public var version: StitchSchemaVersion
    
    public init(version: StitchSchemaVersion) {
        self.version = version
    }
}

extension StitchDocumentVersion {
    public static func getCodableType(from version: StitchSchemaVersion) -> any StitchVersionedCodable.Type {
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
