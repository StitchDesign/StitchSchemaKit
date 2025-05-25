//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentAsyncMediaValue = AsyncMediaValue_V31
public typealias CurrentClassicAnimationCurve = ClassicAnimationCurve_V31
public typealias CurrentCameraSettings = CameraSettings_V31
public typealias CurrentCommentBoxData = CommentBoxData_V31
public typealias CurrentCustomShape = CustomShape_V31
public typealias CurrentDataType = DataType_V31
public typealias CurrentDelayStyle = DelayStyle_V31
public typealias CurrentDateAndTimeFormat = DateAndTimeFormat_V31
public typealias CurrentExpansionDirection = ExpansionDirection_V31
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V31
public typealias CurrentPatch = Patch_V31
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V31
public typealias CurrentLayerDimension = LayerDimension_V31
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V31
public typealias CurrentLayerNodeId = LayerNodeId_V31
public typealias CurrentNodeEntity = NodeEntity_V31
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V31
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V31
public typealias CurrentSplitterType = SplitterType_V31
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V31
public typealias CurrentJSONCurveTo = JSONCurveTo_V31
public typealias CurrentJSONShapeCommand = JSONShapeCommand_V31
public typealias CurrentJSONShapeKeys = JSONShapeKeys_V31
public typealias CurrentSidebarLayerData = SidebarLayerData_V31
public typealias CurrentNodeKind = NodeKind_V31
public typealias CurrentAnchoring = Anchoring_V31
public typealias CurrentCameraDirection = CameraDirection_V31
public typealias CurrentLayer = Layer_V31
public typealias CurrentLayerSize = LayerSize_V31
public typealias CurrentLayerTextDecoration = LayerTextDecoration_V31
public typealias CurrentLayerStroke = LayerStroke_V31
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V31
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAlignment_V31
public typealias CurrentLightType = LightType_V31
public typealias CurrentMediaKey = MediaKey_V31
public typealias CurrentMobileHapticStyle = MobileHapticStyle_V31
public typealias CurrentNetworkRequestType = NetworkRequestType_V31
public typealias CurrentPathPoint = PathPoint_V31
public typealias CurrentPlane = Plane_V31
public typealias CurrentPoint3D = Point3D_V31
public typealias CurrentPoint4D = Point4D_V31
public typealias CurrentPortValueComparable = PortValueComparable_V31
public typealias CurrentPreviewSize = PreviewSize_V31
public typealias CurrentRGBA = RGBA_V31
public typealias CurrentRoundedRectangleData = RoundedRectangleData_V31
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V31
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V31
public typealias CurrentScrollMode = ScrollMode_V31
public typealias CurrentShapeCommand = ShapeCommand_V31
public typealias CurrentShapeCommandType = ShapeCommandType_V31
public typealias CurrentShapeCoordinates = ShapeCoordinates_V31
public typealias CurrentShapeAndRect = ShapeAndRect_V31
public typealias CurrentStitchDocument = StitchDocument_V31
public typealias CurrentStitchBlendMode = StitchBlendMode_V31
public typealias CurrentStitchCameraOrientation = StitchCameraOrientation_V31
public typealias CurrentStitchDeviceOrientation = StitchDeviceOrientation_V31
public typealias CurrentStitchMapType = StitchMapType_V31
public typealias CurrentStitchFont = StitchFont_V31
public typealias CurrentStitchFontChoice = StitchFontChoice_V31
public typealias CurrentStitchFontWeight = StitchFontWeight_V31
public typealias CurrentStitchJSON = StitchJSON_V31
public typealias CurrentStitchOrientation = StitchOrientation_V31
public typealias CurrentStitchProgressIndicatorStyle = ProgressIndicatorStyle_V31
public typealias CurrentTextTransform = TextTransform_V31
public typealias CurrentTriangleData = TriangleData_V31
public typealias CurrentPortValue = PortValue_V31
public typealias CurrentUserVisibleType = UserVisibleType_V31
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V31
public typealias CurrentNodeConnectionType = NodeConnectionType_V31
public typealias CurrentLayerInputType = LayerInputType_V31
public typealias CurrentNodeIOPortType = NodeIOPortType_V31
public typealias CurrentStrokeLineCap = StrokeLineCap_V31
public typealias CurrentStrokeLineJoin = StrokeLineJoin_V31
public typealias CurrentStitchStringValue = StitchStringValue_V31
public typealias CurrentStitchContentMode = StitchContentMode_V31
public typealias CurrentStitchSpacing = StitchSpacing_V31
public typealias CurrentStitchPadding = StitchPadding_V31
public typealias CurrentSizingScenario = SizingScenario_V31
public typealias CurrentNodeTypeEntity = NodeTypeEntity_V31
public typealias CurrentCanvasNodeEntity = CanvasNodeEntity_V31
public typealias CurrentLayerInputDataEntity = LayerInputDataEntity_V31
public typealias CurrentCanvasItemId = CanvasItemId_V31
public typealias CurrentLayerInputCoordinate = LayerInputCoordinate_V31
public typealias CurrentLayerOutputCoordinate = LayerOutputCoordinate_V31
public typealias CurrentPinToId = PinToId_V31
public typealias CurrentLayerInputEntity = LayerInputEntity_V31
public typealias CurrentLayerInputPort = LayerInputPort_V31
public typealias CurrentLayerInputKeyPathType = LayerInputKeyPathType_V31
public typealias CurrentUnpackedPortType = UnpackedPortType_V31
public typealias CurrentStitchTransform = StitchTransform_V31
public typealias CurrentStitchComponent = StitchComponent_V31
public typealias CurrentComponentEntity = ComponentEntity_V31
public typealias CurrentGraphEntity = GraphEntity_V31
public typealias CurrentGraphSaveLocation = GraphSaveLocation_V31
public typealias CurrentGraphDocumentPath = GraphDocumentPath_V31
public typealias CurrentStitchSystemType = StitchSystemType_V31
public typealias CurrentStitchSystem = StitchSystem_V31
public typealias CurrentDeviceAppearance = DeviceAppearance_V31
public typealias CurrentMaterialThickness = MaterialThickness_V31

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
    case _V25 = 25
    case _V26 = 26
    case _V27 = 27
    case _V28 = 28
    case _V29 = 29
    case _V30 = 30
    case _V31 = 31
    case _V32 = 32
}
