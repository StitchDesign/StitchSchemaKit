//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentAsyncMediaValue = AsyncMediaValue_V25
public typealias CurrentClassicAnimationCurve = ClassicAnimationCurve_V25
public typealias CurrentCameraSettings = CameraSettings_V25
public typealias CurrentCommentBoxData = CommentBoxData_V25
public typealias CurrentCustomShape = CustomShape_V25
public typealias CurrentDataType = DataType_V25
public typealias CurrentDelayStyle = DelayStyle_V25
public typealias CurrentDateAndTimeFormat = DateAndTimeFormat_V25
public typealias CurrentExpansionDirection = ExpansionDirection_V25
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V25
public typealias CurrentPatch = Patch_V25
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V25
public typealias CurrentLayerDimension = LayerDimension_V25
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V25
public typealias CurrentLayerNodeId = LayerNodeId_V25
public typealias CurrentNodeEntity = NodeEntity_V25
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V25
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V25
public typealias CurrentSplitterType = SplitterType_V25
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V25
public typealias CurrentJSONCurveTo = JSONCurveTo_V25
public typealias CurrentJSONShapeCommand = JSONShapeCommand_V25
public typealias CurrentJSONShapeKeys = JSONShapeKeys_V25
public typealias CurrentSidebarLayerData = SidebarLayerData_V25
public typealias CurrentNodeKind = NodeKind_V25
public typealias CurrentAnchoring = Anchoring_V25
public typealias CurrentCameraDirection = CameraDirection_V25
public typealias CurrentLayer = Layer_V25
public typealias CurrentLayerSize = LayerSize_V25
public typealias CurrentLayerTextDecoration = LayerTextDecoration_V25
public typealias CurrentLayerStroke = LayerStroke_V25
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V25
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAlignment_V25
public typealias CurrentLightType = LightType_V25
public typealias CurrentMediaKey = MediaKey_V25
public typealias CurrentMobileHapticStyle = MobileHapticStyle_V25
public typealias CurrentNetworkRequestType = NetworkRequestType_V25
public typealias CurrentPathPoint = PathPoint_V25
public typealias CurrentPlane = Plane_V25
public typealias CurrentPoint3D = Point3D_V25
public typealias CurrentPoint4D = Point4D_V25
public typealias CurrentPortValueComparable = PortValueComparable_V25
public typealias CurrentPreviewSize = PreviewSize_V25
public typealias CurrentRGBA = RGBA_V25
public typealias CurrentRoundedRectangleData = RoundedRectangleData_V25
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V25
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V25
public typealias CurrentScrollMode = ScrollMode_V25
public typealias CurrentShapeCommand = ShapeCommand_V25
public typealias CurrentShapeCommandType = ShapeCommandType_V25
public typealias CurrentShapeCoordinates = ShapeCoordinates_V25
public typealias CurrentShapeAndRect = ShapeAndRect_V25
public typealias CurrentStitchDocument = StitchDocument_V25
public typealias CurrentStitchBlendMode = StitchBlendMode_V25
public typealias CurrentStitchCameraOrientation = StitchCameraOrientation_V25
public typealias CurrentStitchDeviceOrientation = StitchDeviceOrientation_V25
public typealias CurrentStitchMapType = StitchMapType_V25
public typealias CurrentStitchFont = StitchFont_V25
public typealias CurrentStitchFontChoice = StitchFontChoice_V25
public typealias CurrentStitchFontWeight = StitchFontWeight_V25
public typealias CurrentStitchJSON = StitchJSON_V25
public typealias CurrentStitchOrientation = StitchOrientation_V25
public typealias CurrentStitchProgressIndicatorStyle = ProgressIndicatorStyle_V25
public typealias CurrentTextTransform = TextTransform_V25
public typealias CurrentTriangleData = TriangleData_V25
public typealias CurrentPortValue = PortValue_V25
public typealias CurrentUserVisibleType = UserVisibleType_V25
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V25
public typealias CurrentNodeConnectionType = NodeConnectionType_V25
public typealias CurrentLayerInputType = LayerInputType_V25
public typealias CurrentNodeIOPortType = NodeIOPortType_V25
public typealias CurrentStrokeLineCap = StrokeLineCap_V25
public typealias CurrentStrokeLineJoin = StrokeLineJoin_V25
public typealias CurrentStitchStringValue = StitchStringValue_V25
public typealias CurrentStitchContentMode = StitchContentMode_V25
public typealias CurrentStitchSpacing = StitchSpacing_V25
public typealias CurrentStitchPadding = StitchPadding_V25
public typealias CurrentSizingScenario = SizingScenario_V25
public typealias CurrentNodeTypeEntity = NodeTypeEntity_V25
public typealias CurrentCanvasNodeEntity = CanvasNodeEntity_V25
public typealias CurrentLayerInputDataEntity = LayerInputDataEntity_V25
public typealias CurrentCanvasItemId = CanvasItemId_V25
public typealias CurrentLayerInputCoordinate = LayerInputCoordinate_V25
public typealias CurrentLayerOutputCoordinate = LayerOutputCoordinate_V25
public typealias CurrentPinToId = PinToId_V25
public typealias CurrentLayerInputEntity = LayerInputEntity_V25
public typealias CurrentLayerInputPort = LayerInputPort_V25
public typealias CurrentLayerInputKeyPathType = LayerInputKeyPathType_V25
public typealias CurrentUnpackedPortType = UnpackedPortType_V25
public typealias CurrentStitchTransform = StitchTransform_V25
public typealias CurrentStitchComponent = StitchComponent_V25
public typealias CurrentComponentEntity = ComponentEntity_V25
public typealias CurrentGraphEntity = GraphEntity_V25
public typealias CurrentGraphSaveLocation = GraphSaveLocation_V25
public typealias CurrentGraphDocumentPath = GraphDocumentPath_V25
public typealias CurrentStitchSystemType = StitchSystemType_V25
public typealias CurrentStitchSystem = StitchSystem_V25
public typealias CurrentDeviceAppearance = DeviceAppearance_V25
public typealias CurrentMaterialThickness = MaterialThickness_V25

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
}
