//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentAsyncMediaValue = AsyncMediaValue_V28
public typealias CurrentClassicAnimationCurve = ClassicAnimationCurve_V28
public typealias CurrentCameraSettings = CameraSettings_V28
public typealias CurrentCommentBoxData = CommentBoxData_V28
public typealias CurrentCustomShape = CustomShape_V28
public typealias CurrentDataType = DataType_V28
public typealias CurrentDelayStyle = DelayStyle_V28
public typealias CurrentDateAndTimeFormat = DateAndTimeFormat_V28
public typealias CurrentExpansionDirection = ExpansionDirection_V28
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V28
public typealias CurrentPatch = Patch_V28
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V28
public typealias CurrentLayerDimension = LayerDimension_V28
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V28
public typealias CurrentLayerNodeId = LayerNodeId_V28
public typealias CurrentNodeEntity = NodeEntity_V28
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V28
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V28
public typealias CurrentSplitterType = SplitterType_V28
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V28
public typealias CurrentJSONCurveTo = JSONCurveTo_V28
public typealias CurrentJSONShapeCommand = JSONShapeCommand_V28
public typealias CurrentJSONShapeKeys = JSONShapeKeys_V28
public typealias CurrentSidebarLayerData = SidebarLayerData_V28
public typealias CurrentNodeKind = NodeKind_V28
public typealias CurrentAnchoring = Anchoring_V28
public typealias CurrentCameraDirection = CameraDirection_V28
public typealias CurrentLayer = Layer_V28
public typealias CurrentLayerSize = LayerSize_V28
public typealias CurrentLayerTextDecoration = LayerTextDecoration_V28
public typealias CurrentLayerStroke = LayerStroke_V28
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V28
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAlignment_V28
public typealias CurrentLightType = LightType_V28
public typealias CurrentMediaKey = MediaKey_V28
public typealias CurrentMobileHapticStyle = MobileHapticStyle_V28
public typealias CurrentNetworkRequestType = NetworkRequestType_V28
public typealias CurrentPathPoint = PathPoint_V28
public typealias CurrentPlane = Plane_V28
public typealias CurrentPoint3D = Point3D_V28
public typealias CurrentPoint4D = Point4D_V28
public typealias CurrentPortValueComparable = PortValueComparable_V28
public typealias CurrentPreviewSize = PreviewSize_V28
public typealias CurrentRGBA = RGBA_V28
public typealias CurrentRoundedRectangleData = RoundedRectangleData_V28
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V28
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V28
public typealias CurrentScrollMode = ScrollMode_V28
public typealias CurrentShapeCommand = ShapeCommand_V28
public typealias CurrentShapeCommandType = ShapeCommandType_V28
public typealias CurrentShapeCoordinates = ShapeCoordinates_V28
public typealias CurrentShapeAndRect = ShapeAndRect_V28
public typealias CurrentStitchDocument = StitchDocument_V28
public typealias CurrentStitchBlendMode = StitchBlendMode_V28
public typealias CurrentStitchCameraOrientation = StitchCameraOrientation_V28
public typealias CurrentStitchDeviceOrientation = StitchDeviceOrientation_V28
public typealias CurrentStitchMapType = StitchMapType_V28
public typealias CurrentStitchFont = StitchFont_V28
public typealias CurrentStitchFontChoice = StitchFontChoice_V28
public typealias CurrentStitchFontWeight = StitchFontWeight_V28
public typealias CurrentStitchJSON = StitchJSON_V28
public typealias CurrentStitchOrientation = StitchOrientation_V28
public typealias CurrentStitchProgressIndicatorStyle = ProgressIndicatorStyle_V28
public typealias CurrentTextTransform = TextTransform_V28
public typealias CurrentTriangleData = TriangleData_V28
public typealias CurrentPortValue = PortValue_V28
public typealias CurrentUserVisibleType = UserVisibleType_V28
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V28
public typealias CurrentNodeConnectionType = NodeConnectionType_V28
public typealias CurrentLayerInputType = LayerInputType_V28
public typealias CurrentNodeIOPortType = NodeIOPortType_V28
public typealias CurrentStrokeLineCap = StrokeLineCap_V28
public typealias CurrentStrokeLineJoin = StrokeLineJoin_V28
public typealias CurrentStitchStringValue = StitchStringValue_V28
public typealias CurrentStitchContentMode = StitchContentMode_V28
public typealias CurrentStitchSpacing = StitchSpacing_V28
public typealias CurrentStitchPadding = StitchPadding_V28
public typealias CurrentSizingScenario = SizingScenario_V28
public typealias CurrentNodeTypeEntity = NodeTypeEntity_V28
public typealias CurrentCanvasNodeEntity = CanvasNodeEntity_V28
public typealias CurrentLayerInputDataEntity = LayerInputDataEntity_V28
public typealias CurrentCanvasItemId = CanvasItemId_V28
public typealias CurrentLayerInputCoordinate = LayerInputCoordinate_V28
public typealias CurrentLayerOutputCoordinate = LayerOutputCoordinate_V28
public typealias CurrentPinToId = PinToId_V28
public typealias CurrentLayerInputEntity = LayerInputEntity_V28
public typealias CurrentLayerInputPort = LayerInputPort_V28
public typealias CurrentLayerInputKeyPathType = LayerInputKeyPathType_V28
public typealias CurrentUnpackedPortType = UnpackedPortType_V28
public typealias CurrentStitchTransform = StitchTransform_V28
public typealias CurrentStitchComponent = StitchComponent_V28
public typealias CurrentComponentEntity = ComponentEntity_V28
public typealias CurrentGraphEntity = GraphEntity_V28
public typealias CurrentGraphSaveLocation = GraphSaveLocation_V28
public typealias CurrentGraphDocumentPath = GraphDocumentPath_V28
public typealias CurrentStitchSystemType = StitchSystemType_V28
public typealias CurrentStitchSystem = StitchSystem_V28
public typealias CurrentDeviceAppearance = DeviceAppearance_V28
public typealias CurrentMaterialThickness = MaterialThickness_V28

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
}
