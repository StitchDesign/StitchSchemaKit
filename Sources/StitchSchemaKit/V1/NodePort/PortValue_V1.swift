//
//  PortValue.swift
//
//
//  Created by Elliot Boschwitz on 1/22/24.
//

import Foundation
import SwiftUI
import simd
import Vision
import SwiftyJSON

public enum PortValue_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.PortValue
    public typealias LayerDimension = LayerDimension_V1.LayerDimension
    public typealias Plane = Plane_V1.Plane
    public typealias NetworkRequestType = NetworkRequestType_V1.NetworkRequestType
    public typealias LayerSize = LayerSize_V1.LayerSize
    public typealias Point3D = Point3D_V1.Point3D
    public typealias Point4D = Point4D_V1.Point4D
    public typealias AsyncMediaValue = AsyncMediaValue_V1.AsyncMediaValue
    public typealias StitchJSON = StitchJSON_V1.StitchJSON
    public typealias Anchoring = Anchoring_V1.Anchoring
    public typealias CameraDirection = CameraDirection_V1.CameraDirection
    public typealias ScrollMode = ScrollMode_V1.ScrollMode
    public typealias TextAlignment = LayerTextAlignment_V1.LayerTextAlignment
    public typealias TextVerticalAlignment = LayerTextVerticalAlignment_V1.LayerTextVerticalAlignment
    public typealias VisualMediaFitStyle = VisualMediaFitStyle_V1.VisualMediaFitStyle
    public typealias ClassicAnimationCurve = ClassicAnimationCurve_V1.ClassicAnimationCurve
    public typealias LightType = LightType_V1.LightType
    public typealias LayerStroke = LayerStroke_V1.LayerStroke
    public typealias DateAndTimeFormat = DateAndTimeFormat_V1.DateAndTimeFormat
    public typealias CustomShape = CustomShape_V1.CustomShape
    public typealias ScrollJumpStyle = ScrollJumpStyle_V1.ScrollJumpStyle
    public typealias ScrollDecelerationRate = ScrollDecelerationRate_V1.ScrollDecelerationRate
    public typealias PortValueComparable = PortValueComparable_V1.PortValueComparable
    public typealias DelayStyle = DelayStyle_V1.DelayStyle
    public typealias ShapeCoordinates = ShapeCoordinates_V1.ShapeCoordinates
    public typealias ShapeCommandType = ShapeCommandType_V1.ShapeCommandType
    public typealias ShapeCommand = ShapeCommand_V1.ShapeCommand
    public typealias StitchOrientation = StitchOrientation_V1.StitchOrientation
    public typealias StitchCameraOrientation = StitchCameraOrientation_V1.StitchCameraOrientation
    public typealias StitchDeviceOrientation = StitchDeviceOrientation_V1.StitchDeviceOrientation
    public typealias StitchFont = StitchFont_V1.StitchFont
    public typealias LayerTextDecoration = LayerTextDecoration_V1.LayerTextDecoration
    public typealias LayerNodeId = LayerNodeId_V1.LayerNodeId
    public typealias TextTransform = TextTransform_V1.TextTransform

    // MARK: - end
    
    public enum PortValue: Codable, Equatable {
        case string(String)
        case bool(Bool)
        case int(Int) // e.g  nodeId or index?
        case number(Double) // e.g. CGFloat, part of CGSize, etc.
        case layerDimension(LayerDimension)
        case matrixTransform(matrix_float4x4)
        case plane(Plane)
        case networkRequestType(NetworkRequestType)
        case color(Color)
        case size(LayerSize)
        case position(CGSize) // TODO: use `CGPoint` instead of `CGSize`
        case point3D(Point3D)
        case point4D(Point4D)
        case pulse(TimeInterval) // TimeInterval = last time this input/output pulsed
        case asyncMedia(AsyncMediaValue?)
        //    case json(JSON)
        case json(StitchJSON)
        case none // how to avoid this?
        case anchoring(Anchoring)
        case cameraDirection(CameraDirection)
        case assignedLayer(LayerNodeId?)
        case scrollMode(ScrollMode)
        case textAlignment(TextAlignment)
        case textVerticalAlignment(TextVerticalAlignment)
        case fitStyle(VisualMediaFitStyle)
        case animationCurve(ClassicAnimationCurve)
        case lightType(LightType)
        case layerStroke(LayerStroke)
        case textTransform(TextTransform)
        case dateAndTimeFormat(DateAndTimeFormat)
        case shape(CustomShape?)
        case scrollJumpStyle(ScrollJumpStyle)
        case scrollDecelerationRate(ScrollDecelerationRate)
        case comparable(PortValueComparable?)
        case delayStyle(DelayStyle)
        case shapeCoordinates(ShapeCoordinates)
        case shapeCommandType(ShapeCommandType) // not exposed to user
        case shapeCommand(ShapeCommand)
        case orientation(StitchOrientation)
        case cameraOrientation(StitchCameraOrientation)
        case deviceOrientation(StitchDeviceOrientation)
        case vnImageCropOption(VNImageCropAndScaleOption)
        case textDecoration(LayerTextDecoration)
        case textFont(StitchFont)
    }
}

extension PortValue_V1.PortValue: StitchVersionedCodable {
    public init(previousInstance: PortValue_V1.PreviousInstance) {
        fatalError()
    }
}
