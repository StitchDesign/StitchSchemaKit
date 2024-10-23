//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentAsyncMediaValue = AsyncMediaValue_V27
public typealias CurrentClassicAnimationCurve = ClassicAnimationCurve_V27
public typealias CurrentCameraSettings = CameraSettings_V27
public typealias CurrentCommentBoxData = CommentBoxData_V27
public typealias CurrentCustomShape = CustomShape_V27
public typealias CurrentDataType = DataType_V27
public typealias CurrentDelayStyle = DelayStyle_V27
public typealias CurrentDateAndTimeFormat = DateAndTimeFormat_V27
public typealias CurrentExpansionDirection = ExpansionDirection_V27
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V27
public typealias CurrentPatch = Patch_V27
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V27
public typealias CurrentLayerDimension = LayerDimension_V27
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V27
public typealias CurrentLayerNodeId = LayerNodeId_V27
public typealias CurrentNodeEntity = NodeEntity_V27
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V27
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V27
public typealias CurrentSplitterType = SplitterType_V27
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V27
public typealias CurrentJSONCurveTo = JSONCurveTo_V27
public typealias CurrentJSONShapeCommand = JSONShapeCommand_V27
public typealias CurrentJSONShapeKeys = JSONShapeKeys_V27
public typealias CurrentSidebarLayerData = SidebarLayerData_V27
public typealias CurrentNodeKind = NodeKind_V27
public typealias CurrentAnchoring = Anchoring_V27
public typealias CurrentCameraDirection = CameraDirection_V27
public typealias CurrentLayer = Layer_V27
public typealias CurrentLayerSize = LayerSize_V27
public typealias CurrentLayerTextDecoration = LayerTextDecoration_V27
public typealias CurrentLayerStroke = LayerStroke_V27
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V27
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAlignment_V27
public typealias CurrentLightType = LightType_V27
public typealias CurrentMediaKey = MediaKey_V27
public typealias CurrentMobileHapticStyle = MobileHapticStyle_V27
public typealias CurrentNetworkRequestType = NetworkRequestType_V27
public typealias CurrentPathPoint = PathPoint_V27
public typealias CurrentPlane = Plane_V27
public typealias CurrentPoint3D = Point3D_V27
public typealias CurrentPoint4D = Point4D_V27
public typealias CurrentPortValueComparable = PortValueComparable_V27
public typealias CurrentPreviewSize = PreviewSize_V27
public typealias CurrentRGBA = RGBA_V27
public typealias CurrentRoundedRectangleData = RoundedRectangleData_V27
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V27
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V27
public typealias CurrentScrollMode = ScrollMode_V27
public typealias CurrentShapeCommand = ShapeCommand_V27
public typealias CurrentShapeCommandType = ShapeCommandType_V27
public typealias CurrentShapeCoordinates = ShapeCoordinates_V27
public typealias CurrentShapeAndRect = ShapeAndRect_V27
public typealias CurrentStitchDocument = StitchDocument_V27
public typealias CurrentStitchBlendMode = StitchBlendMode_V27
public typealias CurrentStitchCameraOrientation = StitchCameraOrientation_V27
public typealias CurrentStitchDeviceOrientation = StitchDeviceOrientation_V27
public typealias CurrentStitchMapType = StitchMapType_V27
public typealias CurrentStitchFont = StitchFont_V27
public typealias CurrentStitchFontChoice = StitchFontChoice_V27
public typealias CurrentStitchFontWeight = StitchFontWeight_V27
public typealias CurrentStitchJSON = StitchJSON_V27
public typealias CurrentStitchOrientation = StitchOrientation_V27
public typealias CurrentStitchProgressIndicatorStyle = ProgressIndicatorStyle_V27
public typealias CurrentTextTransform = TextTransform_V27
public typealias CurrentTriangleData = TriangleData_V27
public typealias CurrentPortValue = PortValue_V27
public typealias CurrentUserVisibleType = UserVisibleType_V27
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V27
public typealias CurrentNodeConnectionType = NodeConnectionType_V27
public typealias CurrentLayerInputType = LayerInputType_V27
public typealias CurrentNodeIOPortType = NodeIOPortType_V27
public typealias CurrentStrokeLineCap = StrokeLineCap_V27
public typealias CurrentStrokeLineJoin = StrokeLineJoin_V27
public typealias CurrentStitchStringValue = StitchStringValue_V27
public typealias CurrentStitchContentMode = StitchContentMode_V27
public typealias CurrentStitchSpacing = StitchSpacing_V27
public typealias CurrentStitchPadding = StitchPadding_V27
public typealias CurrentSizingScenario = SizingScenario_V27
public typealias CurrentNodeTypeEntity = NodeTypeEntity_V27
public typealias CurrentCanvasNodeEntity = CanvasNodeEntity_V27
public typealias CurrentLayerInputDataEntity = LayerInputDataEntity_V27
public typealias CurrentCanvasItemId = CanvasItemId_V27
public typealias CurrentLayerInputCoordinate = LayerInputCoordinate_V27
public typealias CurrentLayerOutputCoordinate = LayerOutputCoordinate_V27
public typealias CurrentPinToId = PinToId_V27
public typealias CurrentLayerInputEntity = LayerInputEntity_V27
public typealias CurrentLayerInputPort = LayerInputPort_V27
public typealias CurrentLayerInputKeyPathType = LayerInputKeyPathType_V27
public typealias CurrentUnpackedPortType = UnpackedPortType_V27
public typealias CurrentStitchTransform = StitchTransform_V27
public typealias CurrentStitchComponent = StitchComponent_V27
public typealias CurrentComponentEntity = ComponentEntity_V27
public typealias CurrentGraphEntity = GraphEntity_V27
public typealias CurrentGraphSaveLocation = GraphSaveLocation_V27
public typealias CurrentGraphDocumentPath = GraphDocumentPath_V27
public typealias CurrentStitchSystemType = StitchSystemType_V27
public typealias CurrentStitchSystem = StitchSystem_V27
public typealias CurrentDeviceAppearance = DeviceAppearance_V27
public typealias CurrentMaterialThickness = MaterialThickness_V27

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
}
