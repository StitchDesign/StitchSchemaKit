//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentAsyncMediaValue = AsyncMediaValue_V26
public typealias CurrentClassicAnimationCurve = ClassicAnimationCurve_V26
public typealias CurrentCameraSettings = CameraSettings_V26
public typealias CurrentCommentBoxData = CommentBoxData_V26
public typealias CurrentCustomShape = CustomShape_V26
public typealias CurrentDataType = DataType_V26
public typealias CurrentDelayStyle = DelayStyle_V26
public typealias CurrentDateAndTimeFormat = DateAndTimeFormat_V26
public typealias CurrentExpansionDirection = ExpansionDirection_V26
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V26
public typealias CurrentPatch = Patch_V26
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V26
public typealias CurrentLayerDimension = LayerDimension_V26
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V26
public typealias CurrentLayerNodeId = LayerNodeId_V26
public typealias CurrentNodeEntity = NodeEntity_V26
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V26
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V26
public typealias CurrentSplitterType = SplitterType_V26
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V26
public typealias CurrentJSONCurveTo = JSONCurveTo_V26
public typealias CurrentJSONShapeCommand = JSONShapeCommand_V26
public typealias CurrentJSONShapeKeys = JSONShapeKeys_V26
public typealias CurrentSidebarLayerData = SidebarLayerData_V26
public typealias CurrentNodeKind = NodeKind_V26
public typealias CurrentAnchoring = Anchoring_V26
public typealias CurrentCameraDirection = CameraDirection_V26
public typealias CurrentLayer = Layer_V26
public typealias CurrentLayerSize = LayerSize_V26
public typealias CurrentLayerTextDecoration = LayerTextDecoration_V26
public typealias CurrentLayerStroke = LayerStroke_V26
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V26
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAlignment_V26
public typealias CurrentLightType = LightType_V26
public typealias CurrentMediaKey = MediaKey_V26
public typealias CurrentMobileHapticStyle = MobileHapticStyle_V26
public typealias CurrentNetworkRequestType = NetworkRequestType_V26
public typealias CurrentPathPoint = PathPoint_V26
public typealias CurrentPlane = Plane_V26
public typealias CurrentPoint3D = Point3D_V26
public typealias CurrentPoint4D = Point4D_V26
public typealias CurrentPortValueComparable = PortValueComparable_V26
public typealias CurrentPreviewSize = PreviewSize_V26
public typealias CurrentRGBA = RGBA_V26
public typealias CurrentRoundedRectangleData = RoundedRectangleData_V26
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V26
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V26
public typealias CurrentScrollMode = ScrollMode_V26
public typealias CurrentShapeCommand = ShapeCommand_V26
public typealias CurrentShapeCommandType = ShapeCommandType_V26
public typealias CurrentShapeCoordinates = ShapeCoordinates_V26
public typealias CurrentShapeAndRect = ShapeAndRect_V26
public typealias CurrentStitchDocument = StitchDocument_V26
public typealias CurrentStitchBlendMode = StitchBlendMode_V26
public typealias CurrentStitchCameraOrientation = StitchCameraOrientation_V26
public typealias CurrentStitchDeviceOrientation = StitchDeviceOrientation_V26
public typealias CurrentStitchMapType = StitchMapType_V26
public typealias CurrentStitchFont = StitchFont_V26
public typealias CurrentStitchFontChoice = StitchFontChoice_V26
public typealias CurrentStitchFontWeight = StitchFontWeight_V26
public typealias CurrentStitchJSON = StitchJSON_V26
public typealias CurrentStitchOrientation = StitchOrientation_V26
public typealias CurrentStitchProgressIndicatorStyle = ProgressIndicatorStyle_V26
public typealias CurrentTextTransform = TextTransform_V26
public typealias CurrentTriangleData = TriangleData_V26
public typealias CurrentPortValue = PortValue_V26
public typealias CurrentUserVisibleType = UserVisibleType_V26
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V26
public typealias CurrentNodeConnectionType = NodeConnectionType_V26
public typealias CurrentLayerInputType = LayerInputType_V26
public typealias CurrentNodeIOPortType = NodeIOPortType_V26
public typealias CurrentStrokeLineCap = StrokeLineCap_V26
public typealias CurrentStrokeLineJoin = StrokeLineJoin_V26
public typealias CurrentStitchStringValue = StitchStringValue_V26
public typealias CurrentStitchContentMode = StitchContentMode_V26
public typealias CurrentStitchSpacing = StitchSpacing_V26
public typealias CurrentStitchPadding = StitchPadding_V26
public typealias CurrentSizingScenario = SizingScenario_V26
public typealias CurrentNodeTypeEntity = NodeTypeEntity_V26
public typealias CurrentCanvasNodeEntity = CanvasNodeEntity_V26
public typealias CurrentLayerInputDataEntity = LayerInputDataEntity_V26
public typealias CurrentCanvasItemId = CanvasItemId_V26
public typealias CurrentLayerInputCoordinate = LayerInputCoordinate_V26
public typealias CurrentLayerOutputCoordinate = LayerOutputCoordinate_V26
public typealias CurrentPinToId = PinToId_V26
public typealias CurrentLayerInputEntity = LayerInputEntity_V26
public typealias CurrentLayerInputPort = LayerInputPort_V26
public typealias CurrentLayerInputKeyPathType = LayerInputKeyPathType_V26
public typealias CurrentUnpackedPortType = UnpackedPortType_V26
public typealias CurrentStitchTransform = StitchTransform_V26
public typealias CurrentStitchComponent = StitchComponent_V26
public typealias CurrentComponentEntity = ComponentEntity_V26
public typealias CurrentGraphEntity = GraphEntity_V26
public typealias CurrentGraphSaveLocation = GraphSaveLocation_V26
public typealias CurrentGraphDocumentPath = GraphDocumentPath_V26
public typealias CurrentStitchSystemType = StitchSystemType_V26
public typealias CurrentStitchSystem = StitchSystem_V26

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
}
