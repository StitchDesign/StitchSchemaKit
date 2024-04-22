//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentAsyncMediaValue = AsyncMediaValue_V9
public typealias CurrentClassicAnimationCurve = ClassicAnimationCurve_V9
public typealias CurrentCameraSettings = CameraSettings_V9
public typealias CurrentCommentBoxData = CommentBoxData_V9
public typealias CurrentCustomShape = CustomShape_V9
public typealias CurrentDataType = DataType_V9
public typealias CurrentDelayStyle = DelayStyle_V9
public typealias CurrentDateAndTimeFormat = DateAndTimeFormat_V9
public typealias CurrentExpansionDirection = ExpansionDirection_V9
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V9
public typealias CurrentPatch = Patch_V9
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V9
public typealias CurrentLayerDimension = LayerDimension_V9
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V9
public typealias CurrentLayerNodeId = LayerNodeId_V9
public typealias CurrentNodeEntity = NodeEntity_V9
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V9
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V9
public typealias CurrentSplitterType = SplitterType_V9
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V9
public typealias CurrentJSONCurveTo = JSONCurveTo_V9
public typealias CurrentJSONShapeCommand = JSONShapeCommand_V9
public typealias CurrentJSONShapeKeys = JSONShapeKeys_V9
public typealias CurrentSidebarLayerData = SidebarLayerData_V9
public typealias CurrentNodeKind = NodeKind_V9
public typealias CurrentAnchoring = Anchoring_V9
public typealias CurrentCameraDirection = CameraDirection_V9
public typealias CurrentLayer = Layer_V9
public typealias CurrentLayerSize = LayerSize_V9
public typealias CurrentLayerTextDecoration = LayerTextDecoration_V9
public typealias CurrentLayerStroke = LayerStroke_V9
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V9
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAlignment_V9
public typealias CurrentLightType = LightType_V9
public typealias CurrentMediaKey = MediaKey_V9
public typealias CurrentMediaObjectId = MediaObjectId_V9
public typealias CurrentMobileHapticStyle = MobileHapticStyle_V9
public typealias CurrentNetworkRequestType = NetworkRequestType_V9
public typealias CurrentPathPoint = PathPoint_V9
public typealias CurrentPlane = Plane_V9
public typealias CurrentPoint3D = Point3D_V9
public typealias CurrentPoint4D = Point4D_V9
public typealias CurrentPortValueComparable = PortValueComparable_V9
public typealias CurrentPreviewSize = PreviewSize_V9
public typealias CurrentRGBA = RGBA_V9
public typealias CurrentRoundedRectangleData = RoundedRectangleData_V9
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V9
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V9
public typealias CurrentScrollMode = ScrollMode_V9
public typealias CurrentShapeCommand = ShapeCommand_V9
public typealias CurrentShapeCommandType = ShapeCommandType_V9
public typealias CurrentShapeCoordinates = ShapeCoordinates_V9
public typealias CurrentShapeAndRect = ShapeAndRect_V9
public typealias CurrentStitchDocument = StitchDocument_V9
public typealias CurrentStitchBlendMode = StitchBlendMode_V9
public typealias CurrentStitchCameraOrientation = StitchCameraOrientation_V9
public typealias CurrentStitchDeviceOrientation = StitchDeviceOrientation_V9
public typealias CurrentStitchMapType = StitchMapType_V9
public typealias CurrentStitchFont = StitchFont_V9
public typealias CurrentStitchFontChoice = StitchFontChoice_V9
public typealias CurrentStitchFontWeight = StitchFontWeight_V9
public typealias CurrentStitchJSON = StitchJSON_V9
public typealias CurrentStitchOrientation = StitchOrientation_V9
public typealias CurrentStitchProgressIndicatorStyle = ProgressIndicatorStyle_V9
public typealias CurrentTextTransform = TextTransform_V9
public typealias CurrentTriangleData = TriangleData_V9
public typealias CurrentPortValue = PortValue_V9
public typealias CurrentUserVisibleType = UserVisibleType_V9
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V9
public typealias CurrentNodeConnectionType = NodeConnectionType_V9
public typealias CurrentLayerInputType = LayerInputType_V9
public typealias CurrentNodeIOPortType = NodeIOPortType_V9

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
public typealias MobileHapticStyle = CurrentMobileHapticStyle.MobileHapticStyle
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
public typealias ProgressIndicatorStyle = CurrentStitchProgressIndicatorStyle.ProgressIndicatorStyle
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
public typealias StitchBlendMode = CurrentStitchBlendMode.StitchBlendMode
public typealias StitchCameraOrientation = CurrentStitchCameraOrientation.StitchCameraOrientation
public typealias StitchDeviceOrientation = CurrentStitchDeviceOrientation.StitchDeviceOrientation
public typealias StitchMapType = CurrentStitchMapType.StitchMapType
public typealias StitchFont = CurrentStitchFont.StitchFont
public typealias StitchFontChoice = CurrentStitchFontChoice.StitchFontChoice
public typealias StitchFontWeight = CurrentStitchFontWeight.StitchFontWeight
public typealias StitchJSON = CurrentStitchJSON.StitchJSON
public typealias StitchOrientation = CurrentStitchOrientation.StitchOrientation
public typealias TextTransform = CurrentTextTransform.TextTransform
public typealias TriangleData = CurrentTriangleData.TriangleData
public typealias UserVisibleType = CurrentUserVisibleType.UserVisibleType
public typealias VisualMediaFitStyle = CurrentVisualMediaFitStyle.VisualMediaFitStyle
public typealias NodeConnectionType = CurrentNodeConnectionType.NodeConnectionType
public typealias LayerInputType = CurrentLayerInputType.LayerInputType
public typealias NodeIOPortType = CurrentNodeIOPortType.NodeIOPortType


public enum StitchSchemaVersion: Int, VersionType {
    case _V1 = 1
    case _V2 = 2
    case _V3 = 3
    case _V4 = 4
    case _V5 = 5
    case _V6 = 6
    case _V7 = 7
    case _V8 = 8
    case _V9 = 9
    case _V10 = 10
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
        case ._V4:
            return StitchDocument_V4.StitchDocument.self
        case ._V5:
            return StitchDocument_V5.StitchDocument.self
        case ._V6:
            return StitchDocument_V6.StitchDocument.self
        case ._V7:
            return StitchDocument_V7.StitchDocument.self
        case ._V8:
            return StitchDocument_V8.StitchDocument.self
        case ._V9:
            return StitchDocument_V9.StitchDocument.self
        case ._V10:
            return StitchDocument_V10.StitchDocument.self
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
