//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentAsyncMediaValue = AsyncMediaValue_V33
public typealias CurrentClassicAnimationCurve = ClassicAnimationCurve_V33
public typealias CurrentCameraSettings = CameraSettings_V33
public typealias CurrentCommentBoxData = CommentBoxData_V33
public typealias CurrentCustomShape = CustomShape_V33
public typealias CurrentDataType = DataType_V33
public typealias CurrentDelayStyle = DelayStyle_V33
public typealias CurrentDateAndTimeFormat = DateAndTimeFormat_V33
public typealias CurrentExpansionDirection = ExpansionDirection_V33
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V33
public typealias CurrentPatch = Patch_V33
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V33
public typealias CurrentLayerDimension = LayerDimension_V33
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V33
public typealias CurrentLayerNodeId = LayerNodeId_V33
public typealias CurrentNodeEntity = NodeEntity_V33
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V33
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V33
public typealias CurrentSplitterType = SplitterType_V33
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V33
public typealias CurrentJSONCurveTo = JSONCurveTo_V33
public typealias CurrentJSONShapeCommand = JSONShapeCommand_V33
public typealias CurrentJSONShapeKeys = JSONShapeKeys_V33
public typealias CurrentSidebarLayerData = SidebarLayerData_V33
public typealias CurrentNodeKind = NodeKind_V33
public typealias CurrentAnchoring = Anchoring_V33
public typealias CurrentCameraDirection = CameraDirection_V33
public typealias CurrentLayer = Layer_V33
public typealias CurrentLayerSize = LayerSize_V33
public typealias CurrentLayerTextDecoration = LayerTextDecoration_V33
public typealias CurrentLayerStroke = LayerStroke_V33
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V33
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAlignment_V33
public typealias CurrentLightType = LightType_V33
public typealias CurrentMediaKey = MediaKey_V33
public typealias CurrentMobileHapticStyle = MobileHapticStyle_V33
public typealias CurrentNetworkRequestType = NetworkRequestType_V33
public typealias CurrentPathPoint = PathPoint_V33
public typealias CurrentPlane = Plane_V33
public typealias CurrentPoint3D = Point3D_V33
public typealias CurrentPoint4D = Point4D_V33
public typealias CurrentPortValueComparable = PortValueComparable_V33
public typealias CurrentPreviewSize = PreviewSize_V33
public typealias CurrentRGBA = RGBA_V33
public typealias CurrentRoundedRectangleData = RoundedRectangleData_V33
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V33
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V33
public typealias CurrentScrollMode = ScrollMode_V33
public typealias CurrentShapeCommand = ShapeCommand_V33
public typealias CurrentShapeCommandType = ShapeCommandType_V33
public typealias CurrentShapeCoordinates = ShapeCoordinates_V33
public typealias CurrentShapeAndRect = ShapeAndRect_V33
public typealias CurrentStitchDocument = StitchDocument_V33
public typealias CurrentStitchBlendMode = StitchBlendMode_V33
public typealias CurrentStitchCameraOrientation = StitchCameraOrientation_V33
public typealias CurrentStitchDeviceOrientation = StitchDeviceOrientation_V33
public typealias CurrentStitchMapType = StitchMapType_V33
public typealias CurrentStitchFont = StitchFont_V33
public typealias CurrentStitchFontChoice = StitchFontChoice_V33
public typealias CurrentStitchFontWeight = StitchFontWeight_V33
public typealias CurrentStitchJSON = StitchJSON_V33
public typealias CurrentStitchOrientation = StitchOrientation_V33
public typealias CurrentStitchProgressIndicatorStyle = ProgressIndicatorStyle_V33
public typealias CurrentTextTransform = TextTransform_V33
public typealias CurrentTriangleData = TriangleData_V33
public typealias CurrentPortValue = PortValue_V33
public typealias CurrentUserVisibleType = UserVisibleType_V33
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V33
public typealias CurrentNodeConnectionType = NodeConnectionType_V33
public typealias CurrentLayerInputType = LayerInputType_V33
public typealias CurrentNodeIOPortType = NodeIOPortType_V33
public typealias CurrentStrokeLineCap = StrokeLineCap_V33
public typealias CurrentStrokeLineJoin = StrokeLineJoin_V33
public typealias CurrentStitchStringValue = StitchStringValue_V33
public typealias CurrentStitchContentMode = StitchContentMode_V33
public typealias CurrentStitchSpacing = StitchSpacing_V33
public typealias CurrentStitchPadding = StitchPadding_V33
public typealias CurrentSizingScenario = SizingScenario_V33
public typealias CurrentNodeTypeEntity = NodeTypeEntity_V33
public typealias CurrentCanvasNodeEntity = CanvasNodeEntity_V33
public typealias CurrentLayerInputDataEntity = LayerInputDataEntity_V33
public typealias CurrentCanvasItemId = CanvasItemId_V33
public typealias CurrentLayerInputCoordinate = LayerInputCoordinate_V33
public typealias CurrentLayerOutputCoordinate = LayerOutputCoordinate_V33
public typealias CurrentPinToId = PinToId_V33
public typealias CurrentLayerInputEntity = LayerInputEntity_V33
public typealias CurrentLayerInputPort = LayerInputPort_V33
public typealias CurrentLayerInputKeyPathType = LayerInputKeyPathType_V33
public typealias CurrentUnpackedPortType = UnpackedPortType_V33
public typealias CurrentStitchTransform = StitchTransform_V33
public typealias CurrentStitchComponent = StitchComponent_V33
public typealias CurrentComponentEntity = ComponentEntity_V33
public typealias CurrentGraphEntity = GraphEntity_V33
public typealias CurrentGraphSaveLocation = GraphSaveLocation_V33
public typealias CurrentGraphDocumentPath = GraphDocumentPath_V33
public typealias CurrentStitchSystemType = StitchSystemType_V33
public typealias CurrentStitchSystem = StitchSystem_V33
public typealias CurrentDeviceAppearance = DeviceAppearance_V33
public typealias CurrentMaterialThickness = MaterialThickness_V33
public typealias CurrentJavaScriptNodeSettings = JavaScriptNodeSettings_V33
public typealias CurrentJavaScriptPortDefinition = JavaScriptPortDefinition_V33
public typealias CurrentKeyboardType = KeyboardType_V33

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
    case _V33 = 33
}
