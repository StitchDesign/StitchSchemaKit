//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentAsyncMediaValue = AsyncMediaValue_V30
public typealias CurrentClassicAnimationCurve = ClassicAnimationCurve_V30
public typealias CurrentCameraSettings = CameraSettings_V30
public typealias CurrentCommentBoxData = CommentBoxData_V30
public typealias CurrentCustomShape = CustomShape_V30
public typealias CurrentDataType = DataType_V30
public typealias CurrentDelayStyle = DelayStyle_V30
public typealias CurrentDateAndTimeFormat = DateAndTimeFormat_V30
public typealias CurrentExpansionDirection = ExpansionDirection_V30
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V30
public typealias CurrentPatch = Patch_V30
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V30
public typealias CurrentLayerDimension = LayerDimension_V30
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V30
public typealias CurrentLayerNodeId = LayerNodeId_V30
public typealias CurrentNodeEntity = NodeEntity_V30
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V30
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V30
public typealias CurrentSplitterType = SplitterType_V30
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V30
public typealias CurrentJSONCurveTo = JSONCurveTo_V30
public typealias CurrentJSONShapeCommand = JSONShapeCommand_V30
public typealias CurrentJSONShapeKeys = JSONShapeKeys_V30
public typealias CurrentSidebarLayerData = SidebarLayerData_V30
public typealias CurrentNodeKind = NodeKind_V30
public typealias CurrentAnchoring = Anchoring_V30
public typealias CurrentCameraDirection = CameraDirection_V30
public typealias CurrentLayer = Layer_V30
public typealias CurrentLayerSize = LayerSize_V30
public typealias CurrentLayerTextDecoration = LayerTextDecoration_V30
public typealias CurrentLayerStroke = LayerStroke_V30
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V30
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAlignment_V30
public typealias CurrentLightType = LightType_V30
public typealias CurrentMediaKey = MediaKey_V30
public typealias CurrentMobileHapticStyle = MobileHapticStyle_V30
public typealias CurrentNetworkRequestType = NetworkRequestType_V30
public typealias CurrentPathPoint = PathPoint_V30
public typealias CurrentPlane = Plane_V30
public typealias CurrentPoint3D = Point3D_V30
public typealias CurrentPoint4D = Point4D_V30
public typealias CurrentPortValueComparable = PortValueComparable_V30
public typealias CurrentPreviewSize = PreviewSize_V30
public typealias CurrentRGBA = RGBA_V30
public typealias CurrentRoundedRectangleData = RoundedRectangleData_V30
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V30
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V30
public typealias CurrentScrollMode = ScrollMode_V30
public typealias CurrentShapeCommand = ShapeCommand_V30
public typealias CurrentShapeCommandType = ShapeCommandType_V30
public typealias CurrentShapeCoordinates = ShapeCoordinates_V30
public typealias CurrentShapeAndRect = ShapeAndRect_V30
public typealias CurrentStitchDocument = StitchDocument_V30
public typealias CurrentStitchBlendMode = StitchBlendMode_V30
public typealias CurrentStitchCameraOrientation = StitchCameraOrientation_V30
public typealias CurrentStitchDeviceOrientation = StitchDeviceOrientation_V30
public typealias CurrentStitchMapType = StitchMapType_V30
public typealias CurrentStitchFont = StitchFont_V30
public typealias CurrentStitchFontChoice = StitchFontChoice_V30
public typealias CurrentStitchFontWeight = StitchFontWeight_V30
public typealias CurrentStitchJSON = StitchJSON_V30
public typealias CurrentStitchOrientation = StitchOrientation_V30
public typealias CurrentStitchProgressIndicatorStyle = ProgressIndicatorStyle_V30
public typealias CurrentTextTransform = TextTransform_V30
public typealias CurrentTriangleData = TriangleData_V30
public typealias CurrentPortValue = PortValue_V30
public typealias CurrentUserVisibleType = UserVisibleType_V30
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V30
public typealias CurrentNodeConnectionType = NodeConnectionType_V30
public typealias CurrentLayerInputType = LayerInputType_V30
public typealias CurrentNodeIOPortType = NodeIOPortType_V30
public typealias CurrentStrokeLineCap = StrokeLineCap_V30
public typealias CurrentStrokeLineJoin = StrokeLineJoin_V30
public typealias CurrentStitchStringValue = StitchStringValue_V30
public typealias CurrentStitchContentMode = StitchContentMode_V30
public typealias CurrentStitchSpacing = StitchSpacing_V30
public typealias CurrentStitchPadding = StitchPadding_V30
public typealias CurrentSizingScenario = SizingScenario_V30
public typealias CurrentNodeTypeEntity = NodeTypeEntity_V30
public typealias CurrentCanvasNodeEntity = CanvasNodeEntity_V30
public typealias CurrentLayerInputDataEntity = LayerInputDataEntity_V30
public typealias CurrentCanvasItemId = CanvasItemId_V30
public typealias CurrentLayerInputCoordinate = LayerInputCoordinate_V30
public typealias CurrentLayerOutputCoordinate = LayerOutputCoordinate_V30
public typealias CurrentPinToId = PinToId_V30
public typealias CurrentLayerInputEntity = LayerInputEntity_V30
public typealias CurrentLayerInputPort = LayerInputPort_V30
public typealias CurrentLayerInputKeyPathType = LayerInputKeyPathType_V30
public typealias CurrentUnpackedPortType = UnpackedPortType_V30
public typealias CurrentStitchTransform = StitchTransform_V30
public typealias CurrentStitchComponent = StitchComponent_V30
public typealias CurrentComponentEntity = ComponentEntity_V30
public typealias CurrentGraphEntity = GraphEntity_V30
public typealias CurrentGraphSaveLocation = GraphSaveLocation_V30
public typealias CurrentGraphDocumentPath = GraphDocumentPath_V30
public typealias CurrentStitchSystemType = StitchSystemType_V30
public typealias CurrentStitchSystem = StitchSystem_V30
public typealias CurrentDeviceAppearance = DeviceAppearance_V30
public typealias CurrentMaterialThickness = MaterialThickness_V30

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
}
