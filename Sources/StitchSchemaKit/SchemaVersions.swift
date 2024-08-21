//
//  SchemaVersions.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

// MARK: - UPDATE VERSION NUMBERS HERE
public typealias CurrentAsyncMediaValue = AsyncMediaValue_V23
public typealias CurrentClassicAnimationCurve = ClassicAnimationCurve_V23
public typealias CurrentCameraSettings = CameraSettings_V23
public typealias CurrentCommentBoxData = CommentBoxData_V23
public typealias CurrentCustomShape = CustomShape_V23
public typealias CurrentDataType = DataType_V23
public typealias CurrentDelayStyle = DelayStyle_V23
public typealias CurrentDateAndTimeFormat = DateAndTimeFormat_V23
public typealias CurrentExpansionDirection = ExpansionDirection_V23
public typealias CurrentGroupNodeIDCoordinate = GroupNodeID_V23
public typealias CurrentPatch = Patch_V23
public typealias CurrentPatchNodeEntity = PatchNodeEntity_V23
public typealias CurrentLayerDimension = LayerDimension_V23
public typealias CurrentLayerNodeEntity = LayerNodeEntity_V23
public typealias CurrentLayerNodeId = LayerNodeId_V23
public typealias CurrentNodeEntity = NodeEntity_V23
public typealias CurrentNodePortInputEntity = NodePortInputEntity_V23
public typealias CurrentSplitterNodeEntity = SplitterNodeEntity_V23
public typealias CurrentSplitterType = SplitterType_V23
public typealias CurrentNodeIOCoordinate = NodeIOCoordinate_V23
public typealias CurrentJSONCurveTo = JSONCurveTo_V23
public typealias CurrentJSONShapeCommand = JSONShapeCommand_V23
public typealias CurrentJSONShapeKeys = JSONShapeKeys_V23
public typealias CurrentSidebarLayerData = SidebarLayerData_V23
public typealias CurrentNodeKind = NodeKind_V23
public typealias CurrentAnchoring = Anchoring_V23
public typealias CurrentCameraDirection = CameraDirection_V23
public typealias CurrentLayer = Layer_V23
public typealias CurrentLayerSize = LayerSize_V23
public typealias CurrentLayerTextDecoration = LayerTextDecoration_V23
public typealias CurrentLayerStroke = LayerStroke_V23
public typealias CurrentLayerTextAlignment = LayerTextAlignment_V23
public typealias CurrentLayerTextVerticalAlignment = LayerTextVerticalAlignment_V23
public typealias CurrentLightType = LightType_V23
public typealias CurrentMediaKey = MediaKey_V23
public typealias CurrentMobileHapticStyle = MobileHapticStyle_V23
public typealias CurrentNetworkRequestType = NetworkRequestType_V23
public typealias CurrentPathPoint = PathPoint_V23
public typealias CurrentPlane = Plane_V23
public typealias CurrentPoint3D = Point3D_V23
public typealias CurrentPoint4D = Point4D_V23
public typealias CurrentPortValueComparable = PortValueComparable_V23
public typealias CurrentPreviewSize = PreviewSize_V23
public typealias CurrentRGBA = RGBA_V23
public typealias CurrentRoundedRectangleData = RoundedRectangleData_V23
public typealias CurrentScrollDecelerationRate = ScrollDecelerationRate_V23
public typealias CurrentScrollJumpStyle = ScrollJumpStyle_V23
public typealias CurrentScrollMode = ScrollMode_V23
public typealias CurrentShapeCommand = ShapeCommand_V23
public typealias CurrentShapeCommandType = ShapeCommandType_V23
public typealias CurrentShapeCoordinates = ShapeCoordinates_V23
public typealias CurrentShapeAndRect = ShapeAndRect_V23
public typealias CurrentStitchDocument = StitchDocument_V23
public typealias CurrentStitchBlendMode = StitchBlendMode_V23
public typealias CurrentStitchCameraOrientation = StitchCameraOrientation_V23
public typealias CurrentStitchDeviceOrientation = StitchDeviceOrientation_V23
public typealias CurrentStitchMapType = StitchMapType_V23
public typealias CurrentStitchFont = StitchFont_V23
public typealias CurrentStitchFontChoice = StitchFontChoice_V23
public typealias CurrentStitchFontWeight = StitchFontWeight_V23
public typealias CurrentStitchJSON = StitchJSON_V23
public typealias CurrentStitchOrientation = StitchOrientation_V23
public typealias CurrentStitchProgressIndicatorStyle = ProgressIndicatorStyle_V23
public typealias CurrentTextTransform = TextTransform_V23
public typealias CurrentTriangleData = TriangleData_V23
public typealias CurrentPortValue = PortValue_V23
public typealias CurrentUserVisibleType = UserVisibleType_V23
public typealias CurrentVisualMediaFitStyle = VisualMediaFitStyle_V23
public typealias CurrentNodeConnectionType = NodeConnectionType_V23
public typealias CurrentLayerInputType = LayerInputType_V23
public typealias CurrentNodeIOPortType = NodeIOPortType_V23
public typealias CurrentStrokeLineCap = StrokeLineCap_V23
public typealias CurrentStrokeLineJoin = StrokeLineJoin_V23
public typealias CurrentStitchStringValue = StitchStringValue_V23
public typealias CurrentStitchContentMode = StitchContentMode_V23
public typealias CurrentStitchSpacing = StitchSpacing_V23
public typealias CurrentStitchPadding = StitchPadding_V23
public typealias CurrentSizingScenario = SizingScenario_V23
public typealias CurrentNodeTypeEntity = NodeTypeEntity_V23
public typealias CurrentCanvasNodeEntity = CanvasNodeEntity_V23
public typealias CurrentLayerInputDataEntity = LayerInputDataEntity_V23
public typealias CurrentCanvasItemId = CanvasItemId_V23
public typealias CurrentLayerInputCoordinate = LayerInputCoordinate_V23
public typealias CurrentLayerOutputCoordinate = LayerOutputCoordinate_V23
public typealias CurrentPinToId = PinToId_V23
public typealias CurrentLayerInputEntity = LayerInputEntity_V23
public typealias CurrentLayerInputPort = LayerInputPort_V23
public typealias CurrentLayerInputKeyPathType = LayerInputKeyPathType_V23
public typealias CurrentUnpackedPortType = UnpackedPortType_V23
public typealias CurrentStitchTransform = StitchTransform_V23
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
}

public protocol VersionType: CaseIterable, Codable, Comparable, RawRepresentable {}

extension VersionType where RawValue: Comparable {
    public static func < (a: Self, b: Self) -> Bool {
        return a.rawValue < b.rawValue
    }
}

public struct StitchDocumentVersion: StitchSchemaVersionType {
    public typealias NewestVersionType = CurrentStitchDocument.StitchDocument
    
    public var version: StitchSchemaVersion
    
    public init(version: StitchSchemaVersion) {
        self.version = version
    }
}

extension StitchDocumentVersion {
    public static func getCodableType(from version: StitchSchemaVersion) -> any StitchVersionedCodable.Type {
        switch version {
        case ._V1:
            return StitchDocument_V1.StitchDocument.self
        case ._V2:
            return StitchDocument_V2.StitchDocument.self
        case ._V3:
            return StitchDocument_V3.StitchDocument.self
        case ._V4:
            return StitchDocument_V4.StitchDocument.self
        case ._V5:
            return StitchDocument_V5.StitchDocument.self
        case ._V6:
            return StitchDocument_V6.StitchDocument.self
        case ._V7:
            return StitchDocument_V7.StitchDocument.self
        case ._V8:
            return StitchDocument_V8.StitchDocument.self
        case ._V9:
            return StitchDocument_V9.StitchDocument.self
        case ._V10:
            return StitchDocument_V10.StitchDocument.self
        case ._V11:
            return StitchDocument_V11.StitchDocument.self
        case ._V12:
            return StitchDocument_V12.StitchDocument.self
        case ._V13:
            return StitchDocument_V13.StitchDocument.self
        case ._V14:
            return StitchDocument_V14.StitchDocument.self
        case ._V15:
            return StitchDocument_V15.StitchDocument.self
        case ._V16:
            return StitchDocument_V16.StitchDocument.self
        case ._V17:
            return StitchDocument_V17.StitchDocument.self
        case ._V18:
            return StitchDocument_V18.StitchDocument.self
        case ._V19:
            return StitchDocument_V19.StitchDocument.self
        case ._V20:
            return StitchDocument_V20.StitchDocument.self
        case ._V21:
            return StitchDocument_V21.StitchDocument.self
        case ._V22:
            return StitchDocument_V22.StitchDocument.self
        case ._V23:
            return StitchDocument_V23.StitchDocument.self
        }
    }
}

// extension CurrentStitchDocument.StitchDocument_Codable {
//    func convertToSwiftData() -> StitchDocument {
//        let nodes = self.nodes.map { $0.convertToSwiftData() }
//        let doc = StitchDocument(nodes: nodes)
//        return doc
//    }
// }
//
// extension CurrentNodeEntity.NodeEntity_Codable {
//    func convertToSwiftData() -> NodeEntity {
//        NodeEntity(id: self.nodeId,
//                   position: self.position,
//                   zIndex: self.zIndex,
//                   customName: self.customName,
//                   parentGroupNodeId: self.parentGroupNodeId,
//                   patchNodeEntity: self.patchNodeEntity?.convertToSwiftData(),
//                   // Nil for now
//                   layerNodeEntity: nil)
//    }
// }
//
// extension CurrentPatchNodeEntity.PatchNodeEntity_Codable {
//    func convertToSwiftData() -> PatchNodeEntity {
//        PatchNodeEntity(patch: self.patch,
//                        userVisibleType: self.userVisibleType,
//                        // Nil for now
//                        splitterNode: nil)
//    }
// }
//
// extension CurrentNodePortInputEntity.NodePortInputEntity_Codable {
//    func convertToSwiftData() -> NodePortInputEntity {
//        NodePortInputEntity(portId: self.portId,
//                            label: self.label,
//                            // TODO: blank for now
//                            valueEntities: [],
//                            connectedOutputEntity: nil)
//    }
// }
