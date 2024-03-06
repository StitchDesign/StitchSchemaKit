//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentAsyncMediaValue = AsyncMediaValue_V3
public typealias CurrentClassicAnimationCurve = ClassicAnimationCurve_V3
public typealias CurrentCameraSettings = CameraSettings_V3
public typealias CurrentCommentBoxData = CommentBoxData_V3
public typealias CurrentCustomShape = CustomShape_V3
public typealias CurrentDataType = DataType_V3
public typealias CurrentDelayStyle = DelayStyle_V3
public typealias CurrentDateAndTimeFormat = DateAndTimeFormat_V3
public typealias CurrentExpansionDirection = ExpansionDirection_V3
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V3
public typealias CurrentPatch = Patch_V3
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V3
public typealias CurrentLayerDimension = LayerDimension_V3
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V3
public typealias CurrentLayerNodeId = LayerNodeId_V3
public typealias CurrentNodeEntity = NodeEntity_V3
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V3
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V3
public typealias CurrentSplitterType = SplitterType_V3
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V3
public typealias CurrentInteractionType = InteractionType_V3
public typealias CurrentJSONCurveTo = JSONCurveTo_V3
public typealias CurrentJSONShapeCommand = JSONShapeCommand_V3
public typealias CurrentJSONShapeKeys = JSONShapeKeys_V3
public typealias CurrentSidebarLayerData = SidebarLayerData_V3
public typealias CurrentNodeKind = NodeKind_V3
public typealias CurrentAnchoring = Anchoring_V3
public typealias CurrentCameraDirection = CameraDirection_V3
public typealias CurrentLayer = Layer_V3
public typealias CurrentLayerSize = LayerSize_V3
public typealias CurrentLayerTextDecoration = LayerTextDecoration_V3
public typealias CurrentLayerStroke = LayerStroke_V3
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V3
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAlignment_V3
public typealias CurrentLightType = LightType_V3
public typealias CurrentMediaKey = MediaKey_V3
public typealias CurrentMediaObjectId = MediaObjectId_V3
public typealias CurrentNetworkRequestType = NetworkRequestType_V3
public typealias CurrentPathPoint = PathPoint_V3
public typealias CurrentPlane = Plane_V3
public typealias CurrentPoint3D = Point3D_V3
public typealias CurrentPoint4D = Point4D_V3
public typealias CurrentPortValueComparable = PortValueComparable_V3
public typealias CurrentPreviewSize = PreviewSize_V3
public typealias CurrentRGBA = RGBA_V3
public typealias CurrentRoundedRectangleData = RoundedRectangleData_V3
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V3
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V3
public typealias CurrentScrollMode = ScrollMode_V3
public typealias CurrentShapeCommand = ShapeCommand_V3
public typealias CurrentShapeCommandType = ShapeCommandType_V3
public typealias CurrentShapeCoordinates = ShapeCoordinates_V3
public typealias CurrentShapeAndRect = ShapeAndRect_V3
public typealias CurrentStitchDocument = StitchDocument_V3
public typealias CurrentStitchCameraOrientation = StitchCameraOrientation_V3
public typealias CurrentStitchDeviceOrientation = StitchDeviceOrientation_V3
public typealias CurrentStitchFont = StitchFont_V3
public typealias CurrentStitchFontChoice = StitchFontChoice_V3
public typealias CurrentStitchFontWeight = StitchFontWeight_V3
public typealias CurrentStitchJSON = StitchJSON_V3
public typealias CurrentStitchOrientation = StitchOrientation_V3
public typealias CurrentTextTransform = TextTransform_V3
public typealias CurrentTriangleData = TriangleData_V3
public typealias CurrentPortValue = PortValue_V3
public typealias CurrentUserVisibleType = UserVisibleType_V3
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V3

// MARK: - end

public typealias Anchoring = CurrentAnchoring.Anchoring
public typealias AsyncMediaValue = CurrentAsyncMediaValue.AsyncMediaValue
public typealias CameraDirection = CurrentCameraDirection.CameraDirection
public typealias ClassicAnimationCurve = CurrentClassicAnimationCurve.ClassicAnimationCurve
public typealias CameraSettings = CurrentCameraSettings.CameraSettings
public typealias CommentBoxData = CurrentCommentBoxData.CommentBoxData
public typealias CustomShape = CurrentCustomShape.CustomShape
public typealias DataType = CurrentDataType.DataType
public typealias DateAndTimeFormat = CurrentDateAndTimeFormat.DateAndTimeFormat
public typealias DelayStyle = CurrentDelayStyle.DelayStyle
public typealias ExpansionDirection = CurrentExpansionDirection.ExpansionDirection
public typealias GroupNodeId = CurrentGroupNodeIDCoordinate.GroupNodeId
public typealias InteractionType = InteractionType_V1.InteractionType
public typealias JSONCurveTo = CurrentJSONCurveTo.JSONCurveTo
public typealias JSONShapeCommand = CurrentJSONShapeCommand.JSONShapeCommand
public typealias JSONShapeKeys = CurrentJSONShapeKeys.JSONShapeKeys
public typealias Layer = CurrentLayer.Layer
public typealias LayerDimension = CurrentLayerDimension.LayerDimension
public typealias LayerNodeEntity = CurrentLayerNodeEntity.LayerNodeEntity
public typealias LayerNodeId = CurrentLayerNodeId.LayerNodeId
public typealias LayerSize = CurrentLayerSize.LayerSize
public typealias LayerTextDecoration = CurrentLayerTextDecoration.LayerTextDecoration
public typealias LayerStroke = CurrentLayerStroke.LayerStroke
public typealias LayerTextAlignment = CurrentLayerTextAlignment.LayerTextAlignment
public typealias LayerTextVerticalAlignment = CurrentLayerTextVerticalAlignment.LayerTextVerticalAlignment
public typealias LightType = CurrentLightType.LightType
public typealias MediaObjectId = CurrentMediaObjectId.MediaObjectId
public typealias MediaKey = CurrentMediaKey.MediaKey
public typealias NetworkRequestType = CurrentNetworkRequestType.NetworkRequestType
public typealias NodeEntity = CurrentNodeEntity.NodeEntity
public typealias NodeKind = CurrentNodeKind.NodeKind
public typealias NodeIOCoordinate = CurrentNodeIOCoordinate.NodeIOCoordinate
public typealias NodePortInputEntity = CurrentNodePortInputEntity.NodePortInputEntity
public typealias Patch = CurrentPatch.Patch
public typealias PatchNodeEntity = CurrentPatchNodeEntity.PatchNodeEntity
public typealias PathPoint = CurrentPathPoint.PathPoint
public typealias Plane = CurrentPlane.Plane
#if !os(visionOS)
public typealias Point3D = CurrentPoint3D.Point3D
#endif
public typealias Point4D = CurrentPoint4D.Point4D
public typealias PortValue = CurrentPortValue.PortValue
public typealias PortValueComparable = CurrentPortValueComparable.PortValueComparable
public typealias PreviewSize = CurrentPreviewSize.PreviewSize
public typealias RGBA = CurrentRGBA.RGBA
public typealias RoundedRectangleData = CurrentRoundedRectangleData.RoundedRectangleData
public typealias ScrollDecelerationRate = CurrentScrollDecelerationRate.ScrollDecelerationRate
public typealias ScrollJumpStyle = CurrentScrollJumpStyle.ScrollJumpStyle
public typealias ScrollMode = CurrentScrollMode.ScrollMode
public typealias ShapeAndRect = CurrentShapeAndRect.ShapeAndRect
public typealias ShapeCommand = CurrentShapeCommand.ShapeCommand
public typealias ShapeCommandType = CurrentShapeCommandType.ShapeCommandType
public typealias ShapeCoordinates = CurrentShapeCoordinates.ShapeCoordinates
public typealias SidebarLayerData = CurrentSidebarLayerData.SidebarLayerData
public typealias SplitterType = CurrentSplitterType.SplitterType
public typealias SplitterNodeEntity = CurrentSplitterNodeEntity.SplitterNodeEntity
public typealias StitchDocument = CurrentStitchDocument.StitchDocument
public typealias StitchCameraOrientation = CurrentStitchCameraOrientation.StitchCameraOrientation
public typealias StitchDeviceOrientation = CurrentStitchDeviceOrientation.StitchDeviceOrientation
public typealias StitchFont = CurrentStitchFont.StitchFont
public typealias StitchFontChoice = CurrentStitchFontChoice.StitchFontChoice
public typealias StitchFontWeight = CurrentStitchFontWeight.StitchFontWeight
public typealias StitchJSON = CurrentStitchJSON.StitchJSON
public typealias StitchOrientation = CurrentStitchOrientation.StitchOrientation
public typealias TextTransform = CurrentTextTransform.TextTransform
public typealias TriangleData = CurrentTriangleData.TriangleData
public typealias UserVisibleType = CurrentUserVisibleType.UserVisibleType
public typealias VisualMediaFitStyle = CurrentVisualMediaFitStyle.VisualMediaFitStyle


public enum StitchSchemaVersion: Int, VersionType {
    case _V1 = 1
    case _V2 = 2
    case _V3 = 3
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
        case ._V2:
            return StitchDocument_V2.StitchDocument.self
        case ._V3:
            return StitchDocument_V3.StitchDocument.self
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
