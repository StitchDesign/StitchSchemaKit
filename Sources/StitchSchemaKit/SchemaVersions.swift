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
public typealias CurrentDelayStyle = DelayStyle_V1
public typealias CurrentDateAndTimeFormat_V1 = DateAndTimeFormat_V1
public typealias CurrentNodeEntity = NodeEntity_V1
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V1
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V1
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V1
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V1
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V1
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V1
public typealias CurrentSidebarLayerType = SidebarLayerType_V1
public typealias CurrentNodeKind = NodeKind_V1
public typealias CurrentAnchoring = Anchoring_V1
public typealias CurrentCameraDirection = CameraDirection_V1
public typealias CurrentLayerSize = LayerSize_V1
public typealias CurrentLayerStroke = LayerStroke_V1
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V1
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAligment_V1
public typealias CurrentMediaKey = MediaKey_V1
public typealias CurrentNetworkRequestType = NetworkRequestType_V1
public typealias CurrentPlane = Plane_V1
public typealias CurrentPoint3D = Point3D_V1
public typealias CurrentPoint4D = Point4D_V1
public typealias CurrentPortValueComparable = PortValueComparable_V1
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V1
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V1
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V1
public typealias CurrentScrollMode = ScrollMode_V1
public typealias CurrentStitchOrientation = StitchOrientation_V1
public typealias CurrentLightType = LightType_V1
public typealias CurrentTextTransform = TextTransform_V1

// MARK: - end

public typealias Anchoring = CurrentAnchoring.Anchoring
public typealias CameraDirection = CurrentCameraDirection.CameraDirection
public typealias DelayStyle = CurrentDelayStyle.DelayStyle
public typealias DateAndTimeFormat = CurrentDateAndTimeFormat_V1.DateAndTimeFormat
public typealias GroupNodeId = CurrentGroupNodeIDCoordinate.GroupNodeId
public typealias LayerNodeEntity = CurrentLayerNodeEntity.LayerNodeEntity
public typealias LayerSize = CurrentLayerSize.LayerSize
public typealias LayerStroke = CurrentLayerStroke.LayerStroke
public typealias LayerTextAlignment = CurrentLayerTextAlignment.LayerTextAlignment
public typealias LayerTextVerticalAlignment = CurrentLayerTextVerticalAlignment.LayerTextVerticalAligment
public typealias LightType = CurrentLightType.LightType
public typealias MediaKey = CurrentMediaKey.MediaKey
public typealias NetworkRequestType = CurrentNetworkRequestType.NetworkRequestType
public typealias NodeEntity = CurrentNodeEntity.NodeEntity
public typealias NodeKind = CurrentNodeKind.NodeKind
public typealias NodeIOCoordinate = CurrentNodeIOCoordinate.NodeIOCoordinate
public typealias NodePortInputEntity = CurrentNodePortInputEntity.NodePortInputEntity
public typealias PatchNodeEntity = CurrentPatchNodeEntity.PatchNodeEntity
public typealias Plane = CurrentPlane.Plane
public typealias Point3D = CurrentPoint3D.Point3D
public typealias Point4D = CurrentPoint4D.Point4D
public typealias PortValueComparable = CurrentPortValueComparable.PortValueComparable
public typealias ScrollDecelerationRate = CurrentScrollDecelerationRate.ScrollDecelerationRate
public typealias ScrollJumpStyle = CurrentScrollJumpStyle.ScrollJumpStyle
public typealias ScrollMode = CurrentScrollMode.ScrollMode
public typealias SidebarLayerType = CurrentSidebarLayerType.SidebarLayerType
public typealias SplitterNodeEntity = CurrentSplitterNodeEntity.SplitterNodeEntity
public typealias StitchDocument = CurrentStitchDocument.StitchDocument
public typealias StitchOrientation = CurrentStitchOrientation.StitchOrientation
public typealias TextTransform = CurrentTextTransform.TextTransform
public typealias VisualMediaFitStyle = CurrentVisualMediaFitStyle.VisualMediaFitStyle

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
