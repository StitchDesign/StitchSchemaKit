//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentAsyncMediaValue = AsyncMediaValue_V32
public typealias CurrentClassicAnimationCurve = ClassicAnimationCurve_V32
public typealias CurrentCameraSettings = CameraSettings_V32
public typealias CurrentCommentBoxData = CommentBoxData_V32
public typealias CurrentCustomShape = CustomShape_V32
public typealias CurrentDataType = DataType_V32
public typealias CurrentDelayStyle = DelayStyle_V32
public typealias CurrentDateAndTimeFormat = DateAndTimeFormat_V32
public typealias CurrentExpansionDirection = ExpansionDirection_V32
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V32
public typealias CurrentPatch = Patch_V32
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V32
public typealias CurrentLayerDimension = LayerDimension_V32
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V32
public typealias CurrentLayerNodeId = LayerNodeId_V32
public typealias CurrentNodeEntity = NodeEntity_V32
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V32
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V32
public typealias CurrentSplitterType = SplitterType_V32
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V32
public typealias CurrentJSONCurveTo = JSONCurveTo_V32
public typealias CurrentJSONShapeCommand = JSONShapeCommand_V32
public typealias CurrentJSONShapeKeys = JSONShapeKeys_V32
public typealias CurrentSidebarLayerData = SidebarLayerData_V32
public typealias CurrentNodeKind = NodeKind_V32
public typealias CurrentAnchoring = Anchoring_V32
public typealias CurrentCameraDirection = CameraDirection_V32
public typealias CurrentLayer = Layer_V32
public typealias CurrentLayerSize = LayerSize_V32
public typealias CurrentLayerTextDecoration = LayerTextDecoration_V32
public typealias CurrentLayerStroke = LayerStroke_V32
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V32
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAlignment_V32
public typealias CurrentLightType = LightType_V32
public typealias CurrentMediaKey = MediaKey_V32
public typealias CurrentMobileHapticStyle = MobileHapticStyle_V32
public typealias CurrentNetworkRequestType = NetworkRequestType_V32
public typealias CurrentPathPoint = PathPoint_V32
public typealias CurrentPlane = Plane_V32
public typealias CurrentPoint3D = Point3D_V32
public typealias CurrentPoint4D = Point4D_V32
public typealias CurrentPortValueComparable = PortValueComparable_V32
public typealias CurrentPreviewSize = PreviewSize_V32
public typealias CurrentRGBA = RGBA_V32
public typealias CurrentRoundedRectangleData = RoundedRectangleData_V32
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V32
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V32
public typealias CurrentScrollMode = ScrollMode_V32
public typealias CurrentShapeCommand = ShapeCommand_V32
public typealias CurrentShapeCommandType = ShapeCommandType_V32
public typealias CurrentShapeCoordinates = ShapeCoordinates_V32
public typealias CurrentShapeAndRect = ShapeAndRect_V32
public typealias CurrentStitchDocument = StitchDocument_V32
public typealias CurrentStitchBlendMode = StitchBlendMode_V32
public typealias CurrentStitchCameraOrientation = StitchCameraOrientation_V32
public typealias CurrentStitchDeviceOrientation = StitchDeviceOrientation_V32
public typealias CurrentStitchMapType = StitchMapType_V32
public typealias CurrentStitchFont = StitchFont_V32
public typealias CurrentStitchFontChoice = StitchFontChoice_V32
public typealias CurrentStitchFontWeight = StitchFontWeight_V32
public typealias CurrentStitchJSON = StitchJSON_V32
public typealias CurrentStitchOrientation = StitchOrientation_V32
public typealias CurrentStitchProgressIndicatorStyle = ProgressIndicatorStyle_V32
public typealias CurrentTextTransform = TextTransform_V32
public typealias CurrentTriangleData = TriangleData_V32
public typealias CurrentPortValue = PortValue_V32
public typealias CurrentUserVisibleType = UserVisibleType_V32
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V32
public typealias CurrentNodeConnectionType = NodeConnectionType_V32
public typealias CurrentLayerInputType = LayerInputType_V32
public typealias CurrentNodeIOPortType = NodeIOPortType_V32
public typealias CurrentStrokeLineCap = StrokeLineCap_V32
public typealias CurrentStrokeLineJoin = StrokeLineJoin_V32
public typealias CurrentStitchStringValue = StitchStringValue_V32
public typealias CurrentStitchContentMode = StitchContentMode_V32
public typealias CurrentStitchSpacing = StitchSpacing_V32
public typealias CurrentStitchPadding = StitchPadding_V32
public typealias CurrentSizingScenario = SizingScenario_V32
public typealias CurrentNodeTypeEntity = NodeTypeEntity_V32
public typealias CurrentCanvasNodeEntity = CanvasNodeEntity_V32
public typealias CurrentLayerInputDataEntity = LayerInputDataEntity_V32
public typealias CurrentCanvasItemId = CanvasItemId_V32
public typealias CurrentLayerInputCoordinate = LayerInputCoordinate_V32
public typealias CurrentLayerOutputCoordinate = LayerOutputCoordinate_V32
public typealias CurrentPinToId = PinToId_V32
public typealias CurrentLayerInputEntity = LayerInputEntity_V32
public typealias CurrentLayerInputPort = LayerInputPort_V32
public typealias CurrentLayerInputKeyPathType = LayerInputKeyPathType_V32
public typealias CurrentUnpackedPortType = UnpackedPortType_V32
public typealias CurrentStitchTransform = StitchTransform_V32
public typealias CurrentStitchComponent = StitchComponent_V32
public typealias CurrentComponentEntity = ComponentEntity_V32
public typealias CurrentGraphEntity = GraphEntity_V32
public typealias CurrentGraphSaveLocation = GraphSaveLocation_V32
public typealias CurrentGraphDocumentPath = GraphDocumentPath_V32
public typealias CurrentStitchSystemType = StitchSystemType_V32
public typealias CurrentStitchSystem = StitchSystem_V32
public typealias CurrentDeviceAppearance = DeviceAppearance_V32
public typealias CurrentMaterialThickness = MaterialThickness_V32
public typealias CurrentJavaScriptNodeSettings = JavaScriptNodeSettings_V32
public typealias CurrentJavaScriptPortDefinition = JavaScriptPortDefinition_V32
public typealias CurrentKeyboardType = KeyboardType_V32

// MARK: - end

public enum StitchSchemaVersion: Int, VersionType, Sendable {
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
    case _V25 = 25
    case _V26 = 26
    case _V27 = 27
    case _V28 = 28
    case _V29 = 29
    case _V30 = 30
    case _V31 = 31
    case _V32 = 32
}
