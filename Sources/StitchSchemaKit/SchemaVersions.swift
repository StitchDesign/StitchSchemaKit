//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentAsyncMediaValue = AsyncMediaValue_V7
public typealias CurrentClassicAnimationCurve = ClassicAnimationCurve_V7
public typealias CurrentCameraSettings = CameraSettings_V7
public typealias CurrentCommentBoxData = CommentBoxData_V7
public typealias CurrentCustomShape = CustomShape_V7
public typealias CurrentDataType = DataType_V7
public typealias CurrentDelayStyle = DelayStyle_V7
public typealias CurrentDateAndTimeFormat = DateAndTimeFormat_V7
public typealias CurrentExpansionDirection = ExpansionDirection_V7
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V7
public typealias CurrentPatch = Patch_V7
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V7
public typealias CurrentLayerDimension = LayerDimension_V7
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V7
public typealias CurrentLayerNodeId = LayerNodeId_V7
public typealias CurrentNodeEntity = NodeEntity_V7
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V7
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V7
public typealias CurrentSplitterType = SplitterType_V7
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V7
public typealias CurrentJSONCurveTo = JSONCurveTo_V7
public typealias CurrentJSONShapeCommand = JSONShapeCommand_V7
public typealias CurrentJSONShapeKeys = JSONShapeKeys_V7
public typealias CurrentSidebarLayerData = SidebarLayerData_V7
public typealias CurrentNodeKind = NodeKind_V7
public typealias CurrentAnchoring = Anchoring_V7
public typealias CurrentCameraDirection = CameraDirection_V7
public typealias CurrentLayer = Layer_V7
public typealias CurrentLayerSize = LayerSize_V7
public typealias CurrentLayerTextDecoration = LayerTextDecoration_V7
public typealias CurrentLayerStroke = LayerStroke_V7
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V7
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAlignment_V7
public typealias CurrentLightType = LightType_V7
public typealias CurrentMediaKey = MediaKey_V7
public typealias CurrentMediaObjectId = MediaObjectId_V7
public typealias CurrentMobileHapticStyle = MobileHapticStyle_V7
public typealias CurrentNetworkRequestType = NetworkRequestType_V7
public typealias CurrentPathPoint = PathPoint_V7
public typealias CurrentPlane = Plane_V7
public typealias CurrentPoint3D = Point3D_V7
public typealias CurrentPoint4D = Point4D_V7
public typealias CurrentPortValueComparable = PortValueComparable_V7
public typealias CurrentPreviewSize = PreviewSize_V7
public typealias CurrentRGBA = RGBA_V7
public typealias CurrentRoundedRectangleData = RoundedRectangleData_V7
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V7
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V7
public typealias CurrentScrollMode = ScrollMode_V7
public typealias CurrentShapeCommand = ShapeCommand_V7
public typealias CurrentShapeCommandType = ShapeCommandType_V7
public typealias CurrentShapeCoordinates = ShapeCoordinates_V7
public typealias CurrentShapeAndRect = ShapeAndRect_V7
public typealias CurrentStitchDocument = StitchDocument_V7
public typealias CurrentStitchBlendMode = StitchBlendMode_V7
public typealias CurrentStitchCameraOrientation = StitchCameraOrientation_V7
public typealias CurrentStitchDeviceOrientation = StitchDeviceOrientation_V7
public typealias CurrentStitchMapType = StitchMapType_V7
public typealias CurrentStitchFont = StitchFont_V7
public typealias CurrentStitchFontChoice = StitchFontChoice_V7
public typealias CurrentStitchFontWeight = StitchFontWeight_V7
public typealias CurrentStitchJSON = StitchJSON_V7
public typealias CurrentStitchOrientation = StitchOrientation_V7
public typealias CurrentStitchProgressIndicatorStyle = ProgressIndicatorStyle_V7
public typealias CurrentTextTransform = TextTransform_V7
public typealias CurrentTriangleData = TriangleData_V7
public typealias CurrentPortValue = PortValue_V7
public typealias CurrentUserVisibleType = UserVisibleType_V7
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V7
public typealias CurrentNodeConnectionType = NodeConnectionType_V7
public typealias CurrentLayerInputType = LayerInputType_V7
public typealias CurrentNodeIOPortType = NodeIOPortType_V7

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
