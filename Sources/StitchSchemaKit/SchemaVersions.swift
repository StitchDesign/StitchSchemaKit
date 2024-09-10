//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentAsyncMediaValue = AsyncMediaValue_V24
public typealias CurrentClassicAnimationCurve = ClassicAnimationCurve_V24
public typealias CurrentCameraSettings = CameraSettings_V24
public typealias CurrentCommentBoxData = CommentBoxData_V24
public typealias CurrentCustomShape = CustomShape_V24
public typealias CurrentDataType = DataType_V24
public typealias CurrentDelayStyle = DelayStyle_V24
public typealias CurrentDateAndTimeFormat = DateAndTimeFormat_V24
public typealias CurrentExpansionDirection = ExpansionDirection_V24
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V24
public typealias CurrentPatch = Patch_V24
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V24
public typealias CurrentLayerDimension = LayerDimension_V24
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V24
public typealias CurrentLayerNodeId = LayerNodeId_V24
public typealias CurrentNodeEntity = NodeEntity_V24
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V24
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V24
public typealias CurrentSplitterType = SplitterType_V24
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V24
public typealias CurrentJSONCurveTo = JSONCurveTo_V24
public typealias CurrentJSONShapeCommand = JSONShapeCommand_V24
public typealias CurrentJSONShapeKeys = JSONShapeKeys_V24
public typealias CurrentSidebarLayerData = SidebarLayerData_V24
public typealias CurrentNodeKind = NodeKind_V24
public typealias CurrentAnchoring = Anchoring_V24
public typealias CurrentCameraDirection = CameraDirection_V24
public typealias CurrentLayer = Layer_V24
public typealias CurrentLayerSize = LayerSize_V24
public typealias CurrentLayerTextDecoration = LayerTextDecoration_V24
public typealias CurrentLayerStroke = LayerStroke_V24
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V24
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAlignment_V24
public typealias CurrentLightType = LightType_V24
public typealias CurrentMediaKey = MediaKey_V24
public typealias CurrentMobileHapticStyle = MobileHapticStyle_V24
public typealias CurrentNetworkRequestType = NetworkRequestType_V24
public typealias CurrentPathPoint = PathPoint_V24
public typealias CurrentPlane = Plane_V24
public typealias CurrentPoint3D = Point3D_V24
public typealias CurrentPoint4D = Point4D_V24
public typealias CurrentPortValueComparable = PortValueComparable_V24
public typealias CurrentPreviewSize = PreviewSize_V24
public typealias CurrentRGBA = RGBA_V24
public typealias CurrentRoundedRectangleData = RoundedRectangleData_V24
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V24
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V24
public typealias CurrentScrollMode = ScrollMode_V24
public typealias CurrentShapeCommand = ShapeCommand_V24
public typealias CurrentShapeCommandType = ShapeCommandType_V24
public typealias CurrentShapeCoordinates = ShapeCoordinates_V24
public typealias CurrentShapeAndRect = ShapeAndRect_V24
public typealias CurrentStitchDocument = StitchDocument_V24
public typealias CurrentStitchBlendMode = StitchBlendMode_V24
public typealias CurrentStitchCameraOrientation = StitchCameraOrientation_V24
public typealias CurrentStitchDeviceOrientation = StitchDeviceOrientation_V24
public typealias CurrentStitchMapType = StitchMapType_V24
public typealias CurrentStitchFont = StitchFont_V24
public typealias CurrentStitchFontChoice = StitchFontChoice_V24
public typealias CurrentStitchFontWeight = StitchFontWeight_V24
public typealias CurrentStitchJSON = StitchJSON_V24
public typealias CurrentStitchOrientation = StitchOrientation_V24
public typealias CurrentStitchProgressIndicatorStyle = ProgressIndicatorStyle_V24
public typealias CurrentTextTransform = TextTransform_V24
public typealias CurrentTriangleData = TriangleData_V24
public typealias CurrentPortValue = PortValue_V24
public typealias CurrentUserVisibleType = UserVisibleType_V24
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V24
public typealias CurrentNodeConnectionType = NodeConnectionType_V24
public typealias CurrentLayerInputType = LayerInputType_V24
public typealias CurrentNodeIOPortType = NodeIOPortType_V24
public typealias CurrentStrokeLineCap = StrokeLineCap_V24
public typealias CurrentStrokeLineJoin = StrokeLineJoin_V24
public typealias CurrentStitchStringValue = StitchStringValue_V24
public typealias CurrentStitchContentMode = StitchContentMode_V24
public typealias CurrentStitchSpacing = StitchSpacing_V24
public typealias CurrentStitchPadding = StitchPadding_V24
public typealias CurrentSizingScenario = SizingScenario_V24
public typealias CurrentNodeTypeEntity = NodeTypeEntity_V24
public typealias CurrentCanvasNodeEntity = CanvasNodeEntity_V24
public typealias CurrentLayerInputDataEntity = LayerInputDataEntity_V24
public typealias CurrentCanvasItemId = CanvasItemId_V24
public typealias CurrentLayerInputCoordinate = LayerInputCoordinate_V24
public typealias CurrentLayerOutputCoordinate = LayerOutputCoordinate_V24
public typealias CurrentPinToId = PinToId_V24
public typealias CurrentLayerInputEntity = LayerInputEntity_V24
public typealias CurrentLayerInputPort = LayerInputPort_V24
public typealias CurrentLayerInputKeyPathType = LayerInputKeyPathType_V24
public typealias CurrentUnpackedPortType = UnpackedPortType_V24
public typealias CurrentStitchTransform = StitchTransform_V24
public typealias CurrentStitchComponent = StitchComponent_V24

// MARK: - end

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
    case _V11 = 11
    case _V12 = 12
    case _V13 = 13
    case _V14 = 14
    case _V15 = 15
    case _V16 = 16
    case _V17 = 17
    case _V18 = 18
    case _V19 = 19
    case _V20 = 20
    case _V21 = 21
    case _V22 = 22
    case _V23 = 23
    case _V24 = 24
}
