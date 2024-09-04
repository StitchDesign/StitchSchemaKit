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

public enum PortValue_V21: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V21
    public typealias PreviousInstance = PortValue_V20.PortValue
    public typealias StitchStringValue = StitchStringValue_V21.StitchStringValue
    public typealias LayerDimension = LayerDimension_V5.LayerDimension
    public typealias Plane = Plane_V21.Plane
    public typealias NetworkRequestType = NetworkRequestType_V21.NetworkRequestType
    public typealias LayerSize = LayerSize_V21.LayerSize
#if !os(visionOS)
    public typealias Point3D = Point3D_V21.Point3D
#endif
    public typealias Point4D = Point4D_V21.Point4D
    public typealias AsyncMediaValue = AsyncMediaValue_V21.AsyncMediaValue
    public typealias StitchJSON = StitchJSON_V21.StitchJSON
    public typealias Anchoring = Anchoring_V21.Anchoring
    public typealias CameraDirection = CameraDirection_V21.CameraDirection
    public typealias ScrollMode = ScrollMode_V21.ScrollMode
    public typealias LayerTextAlignment = LayerTextAlignment_V21.LayerTextAlignment
    public typealias LayerTextVerticalAlignment = LayerTextVerticalAlignment_V21.LayerTextVerticalAlignment
    public typealias VisualMediaFitStyle = VisualMediaFitStyle_V21.VisualMediaFitStyle
    public typealias ClassicAnimationCurve = ClassicAnimationCurve_V21.ClassicAnimationCurve
    public typealias LightType = LightType_V21.LightType
    public typealias LayerStroke = LayerStroke_V21.LayerStroke
    public typealias DateAndTimeFormat = DateAndTimeFormat_V21.DateAndTimeFormat
    public typealias CustomShape = CustomShape_V21.CustomShape
    public typealias ScrollJumpStyle = ScrollJumpStyle_V21.ScrollJumpStyle
    public typealias ScrollDecelerationRate = ScrollDecelerationRate_V21.ScrollDecelerationRate
    public typealias PortValueComparable = PortValueComparable_V21.PortValueComparable
    public typealias DelayStyle = DelayStyle_V21.DelayStyle
    public typealias ShapeCoordinates = ShapeCoordinates_V21.ShapeCoordinates
    public typealias ShapeCommandType = ShapeCommandType_V21.ShapeCommandType
    public typealias ShapeCommand = ShapeCommand_V21.ShapeCommand
    public typealias StitchOrientation = StitchOrientation_V21.StitchOrientation
    public typealias StitchCameraOrientation = StitchCameraOrientation_V21.StitchCameraOrientation
    public typealias StitchDeviceOrientation = StitchDeviceOrientation_V21.StitchDeviceOrientation
    public typealias StitchFont = StitchFont_V21.StitchFont
    public typealias LayerTextDecoration = LayerTextDecoration_V21.LayerTextDecoration
    public typealias StitchBlendMode = StitchBlendMode_V21.StitchBlendMode
    public typealias StitchMapType = StitchMapType_V21.StitchMapType
    public typealias ProgressIndicatorStyle = ProgressIndicatorStyle_V21.ProgressIndicatorStyle
    public typealias MobileHapticStyle = MobileHapticStyle_V21.MobileHapticStyle
    public typealias StrokeLineCap = StrokeLineCap_V21.StrokeLineCap
    public typealias StrokeLineJoin = StrokeLineJoin_V21.StrokeLineJoin
    public typealias StitchContentMode = StitchContentMode_V21.StitchContentMode
    public typealias StitchSpacing = StitchSpacing_V21.StitchSpacing
    public typealias StitchPadding = StitchPadding_V21.StitchPadding
    public typealias SizingScenario = SizingScenario_V21.SizingScenario
    public typealias LayerNodeId = LayerNodeId_V1.LayerNodeId
    public typealias TextTransform = TextTransform_V1.TextTransform
    // MARK: - end
    
    public enum PortValue: Codable, Equatable {
        case string(StitchStringValue)
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
        case textAlignment(LayerTextAlignment)
        case textVerticalAlignment(LayerTextVerticalAlignment)
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
        case blendMode(StitchBlendMode)
        case mapType(StitchMapType)
        case progressIndicatorStyle(ProgressIndicatorStyle)
        case mobileHapticStyle(MobileHapticStyle)
        case strokeLineCap(StrokeLineCap)
        case strokeLineJoin(StrokeLineJoin)
        case contentMode(StitchContentMode)
        case spacing(StitchSpacing)
        case padding(StitchPadding)
        case sizingScenario(SizingScenario)
    }
}

extension PortValue_V21.PortValue: StitchVersionedCodable {
    public init(previousInstance: PortValue_V21.PreviousInstance) {
        switch previousInstance {
            
        case .string(let value):
            self = .string(PortValue_V21.StitchStringValue(previousInstance: value))
        case .bool(let value):
            self = .bool(value)
        case .int(let value):
            self = .int(value)
        case .number(let value):
            self = .number(value)
        case .layerDimension(let value):
            self = .layerDimension(value)
        case .matrixTransform(let value):
            self = .matrixTransform(value)
        case .plane(let value):
            self = .plane(PortValue_V21.Plane(previousInstance: value))
        case .networkRequestType(let value):
            self = .networkRequestType(PortValue_V21.NetworkRequestType(previousInstance: value))
        case .color(let value):
            self = .color(value)
        case .size(let value):
            self = .size(PortValue_V21.LayerSize(previousInstance: value))
        case .position(let value):
            self = .position(value)
        case .point3D(let value):
#if !os(visionOS)
            self = .point3D(PortValue_V21.Point3D(previousInstance: value))
#else
            let point3d = Point3D(x: value.x,
                                  y: value.y,
                                  z: value.z)
            self = .point3D(point3d)
#endif
        case .point4D(let value):
            self = .point4D(PortValue_V21.Point4D(previousInstance: value))
        case .pulse(let value):
            self = .pulse(value)
        case .asyncMedia(let value):
            self = .asyncMedia(PortValue_V21.AsyncMediaValue(previousInstance: value))
        case .json(let value):
            self = .json(PortValue_V21.StitchJSON(previousInstance: value))
        case .anchoring(let value):
            self = .anchoring(PortValue_V21.Anchoring(previousInstance: value))
        case .cameraDirection(let value):
            self = .cameraDirection(PortValue_V21.CameraDirection(previousInstance: value))
        case .assignedLayer(let value):
            self = .assignedLayer(value)
        case .scrollMode(let value):
            self = .scrollMode(PortValue_V21.ScrollMode(previousInstance: value))
        case .textAlignment(let value):
            self = .textAlignment(PortValue_V21.LayerTextAlignment(previousInstance: value))
        case .textVerticalAlignment(let value):
            self = .textVerticalAlignment(PortValue_V21.LayerTextVerticalAlignment(previousInstance: value))
        case .fitStyle(let value):
            self = .fitStyle(PortValue_V21.VisualMediaFitStyle(previousInstance: value))
        case .animationCurve(let value):
            self = .animationCurve(PortValue_V21.ClassicAnimationCurve(previousInstance: value))
        case .lightType(let value):
            self = .lightType(PortValue_V21.LightType(previousInstance: value))
        case .layerStroke(let value):
            self = .layerStroke(PortValue_V21.LayerStroke(previousInstance: value))
        case .textTransform(let value):
            self = .textTransform(value)
        case .dateAndTimeFormat(let value):
            self = .dateAndTimeFormat(PortValue_V21.DateAndTimeFormat(previousInstance: value))
        case .shape(let value):
            self = .shape(PortValue_V21.CustomShape(previousInstance: value))
        case .scrollJumpStyle(let value):
            self = .scrollJumpStyle(PortValue_V21.ScrollJumpStyle(previousInstance: value))
        case .scrollDecelerationRate(let value):
            self = .scrollDecelerationRate(PortValue_V21.ScrollDecelerationRate(previousInstance: value))
        case .comparable(let value):
            self = .comparable(PortValue_V21.PortValueComparable(previousInstance: value))
        case .delayStyle(let value):
            self = .delayStyle(PortValue_V21.DelayStyle(previousInstance: value))
        case .shapeCoordinates(let value):
            self = .shapeCoordinates(PortValue_V21.ShapeCoordinates(previousInstance: value))
        case .shapeCommandType(let value):
            self = .shapeCommandType(PortValue_V21.ShapeCommandType(previousInstance: value))
        case .shapeCommand(let value):
            self = .shapeCommand(PortValue_V21.ShapeCommand(previousInstance: value))
        case .orientation(let value):
            self = .orientation(PortValue_V21.StitchOrientation(previousInstance: value))
        case .cameraOrientation(let value):
            self = .cameraOrientation(PortValue_V21.StitchCameraOrientation(previousInstance: value))
        case .deviceOrientation(let value):
            self = .deviceOrientation(PortValue_V21.StitchDeviceOrientation(previousInstance: value))
        case .vnImageCropOption(let value):
            self = .vnImageCropOption(value)
        case .textDecoration(let value):
            self = .textDecoration(PortValue_V21.LayerTextDecoration(previousInstance: value))
        case .textFont(let value):
            self = .textFont(PortValue_V21.StitchFont(previousInstance: value))
        case .blendMode(let value):
            self = .blendMode(PortValue_V21.StitchBlendMode(previousInstance: value))
        case .none:
            self = .none
        case .mapType(let value):
            self = .mapType(PortValue_V21.StitchMapType(previousInstance: value))
        case .progressIndicatorStyle(let value):
            self = .progressIndicatorStyle(PortValue_V21.ProgressIndicatorStyle(previousInstance: value))
        case .mobileHapticStyle(let value):
            self = .mobileHapticStyle(PortValue_V21.MobileHapticStyle(previousInstance: value))
        case .strokeLineCap(let value):
            self = .strokeLineCap(PortValue_V21.StrokeLineCap(previousInstance: value))
        case .strokeLineJoin(let value):
            self = .strokeLineJoin(PortValue_V21.StrokeLineJoin(previousInstance: value))
        case .contentMode(let value):
            self = .contentMode(.init(previousInstance: value))
        case .spacing(let value):
            self = .spacing(.init(previousInstance: value))
        case .padding(let value):
            self = .padding(.init(previousInstance: value))
        case .sizingScenario(let value):
            self = .sizingScenario(.init(previousInstance: value))
        }
    }
}
