//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentAsyncMediaValue = AsyncMediaValue_V29
public typealias CurrentClassicAnimationCurve = ClassicAnimationCurve_V29
public typealias CurrentCameraSettings = CameraSettings_V29
public typealias CurrentCommentBoxData = CommentBoxData_V29
public typealias CurrentCustomShape = CustomShape_V29
public typealias CurrentDataType = DataType_V29
public typealias CurrentDelayStyle = DelayStyle_V29
public typealias CurrentDateAndTimeFormat = DateAndTimeFormat_V29
public typealias CurrentExpansionDirection = ExpansionDirection_V29
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V29
public typealias CurrentPatch = Patch_V29
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V29
public typealias CurrentLayerDimension = LayerDimension_V29
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V29
public typealias CurrentLayerNodeId = LayerNodeId_V29
public typealias CurrentNodeEntity = NodeEntity_V29
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V29
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V29
public typealias CurrentSplitterType = SplitterType_V29
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V29
public typealias CurrentJSONCurveTo = JSONCurveTo_V29
public typealias CurrentJSONShapeCommand = JSONShapeCommand_V29
public typealias CurrentJSONShapeKeys = JSONShapeKeys_V29
public typealias CurrentSidebarLayerData = SidebarLayerData_V29
public typealias CurrentNodeKind = NodeKind_V29
public typealias CurrentAnchoring = Anchoring_V29
public typealias CurrentCameraDirection = CameraDirection_V29
public typealias CurrentLayer = Layer_V29
public typealias CurrentLayerSize = LayerSize_V29
public typealias CurrentLayerTextDecoration = LayerTextDecoration_V29
public typealias CurrentLayerStroke = LayerStroke_V29
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V29
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAlignment_V29
public typealias CurrentLightType = LightType_V29
public typealias CurrentMediaKey = MediaKey_V29
public typealias CurrentMobileHapticStyle = MobileHapticStyle_V29
public typealias CurrentNetworkRequestType = NetworkRequestType_V29
public typealias CurrentPathPoint = PathPoint_V29
public typealias CurrentPlane = Plane_V29
public typealias CurrentPoint3D = Point3D_V29
public typealias CurrentPoint4D = Point4D_V29
public typealias CurrentPortValueComparable = PortValueComparable_V29
public typealias CurrentPreviewSize = PreviewSize_V29
public typealias CurrentRGBA = RGBA_V29
public typealias CurrentRoundedRectangleData = RoundedRectangleData_V29
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V29
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V29
public typealias CurrentScrollMode = ScrollMode_V29
public typealias CurrentShapeCommand = ShapeCommand_V29
public typealias CurrentShapeCommandType = ShapeCommandType_V29
public typealias CurrentShapeCoordinates = ShapeCoordinates_V29
public typealias CurrentShapeAndRect = ShapeAndRect_V29
public typealias CurrentStitchDocument = StitchDocument_V29
public typealias CurrentStitchBlendMode = StitchBlendMode_V29
public typealias CurrentStitchCameraOrientation = StitchCameraOrientation_V29
public typealias CurrentStitchDeviceOrientation = StitchDeviceOrientation_V29
public typealias CurrentStitchMapType = StitchMapType_V29
public typealias CurrentStitchFont = StitchFont_V29
public typealias CurrentStitchFontChoice = StitchFontChoice_V29
public typealias CurrentStitchFontWeight = StitchFontWeight_V29
public typealias CurrentStitchJSON = StitchJSON_V29
public typealias CurrentStitchOrientation = StitchOrientation_V29
public typealias CurrentStitchProgressIndicatorStyle = ProgressIndicatorStyle_V29
public typealias CurrentTextTransform = TextTransform_V29
public typealias CurrentTriangleData = TriangleData_V29
public typealias CurrentPortValue = PortValue_V29
public typealias CurrentUserVisibleType = UserVisibleType_V29
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V29
public typealias CurrentNodeConnectionType = NodeConnectionType_V29
public typealias CurrentLayerInputType = LayerInputType_V29
public typealias CurrentNodeIOPortType = NodeIOPortType_V29
public typealias CurrentStrokeLineCap = StrokeLineCap_V29
public typealias CurrentStrokeLineJoin = StrokeLineJoin_V29
public typealias CurrentStitchStringValue = StitchStringValue_V29
public typealias CurrentStitchContentMode = StitchContentMode_V29
public typealias CurrentStitchSpacing = StitchSpacing_V29
public typealias CurrentStitchPadding = StitchPadding_V29
public typealias CurrentSizingScenario = SizingScenario_V29
public typealias CurrentNodeTypeEntity = NodeTypeEntity_V29
public typealias CurrentCanvasNodeEntity = CanvasNodeEntity_V29
public typealias CurrentLayerInputDataEntity = LayerInputDataEntity_V29
public typealias CurrentCanvasItemId = CanvasItemId_V29
public typealias CurrentLayerInputCoordinate = LayerInputCoordinate_V29
public typealias CurrentLayerOutputCoordinate = LayerOutputCoordinate_V29
public typealias CurrentPinToId = PinToId_V29
public typealias CurrentLayerInputEntity = LayerInputEntity_V29
public typealias CurrentLayerInputPort = LayerInputPort_V29
public typealias CurrentLayerInputKeyPathType = LayerInputKeyPathType_V29
public typealias CurrentUnpackedPortType = UnpackedPortType_V29
public typealias CurrentStitchTransform = StitchTransform_V29
public typealias CurrentStitchComponent = StitchComponent_V29
public typealias CurrentComponentEntity = ComponentEntity_V29
public typealias CurrentGraphEntity = GraphEntity_V29
public typealias CurrentGraphSaveLocation = GraphSaveLocation_V29
public typealias CurrentGraphDocumentPath = GraphDocumentPath_V29
public typealias CurrentStitchSystemType = StitchSystemType_V29
public typealias CurrentStitchSystem = StitchSystem_V29
public typealias CurrentDeviceAppearance = DeviceAppearance_V29
public typealias CurrentMaterialThickness = MaterialThickness_V29

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
}
