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

public enum PortValue_V22: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V22
    public typealias PreviousInstance = PortValue_V21.PortValue
    public typealias StitchStringValue = StitchStringValue_V22.StitchStringValue
    public typealias LayerDimension = LayerDimension_V22.LayerDimension
    public typealias Plane = Plane_V22.Plane
    public typealias NetworkRequestType = NetworkRequestType_V22.NetworkRequestType
    public typealias LayerSize = LayerSize_V22.LayerSize
#if !os(visionOS)
    public typealias Point3D = Point3D_V22.Point3D
#endif
    public typealias Point4D = Point4D_V22.Point4D
    public typealias AsyncMediaValue = AsyncMediaValue_V22.AsyncMediaValue
    public typealias StitchJSON = StitchJSON_V22.StitchJSON
    public typealias Anchoring = Anchoring_V22.Anchoring
    public typealias CameraDirection = CameraDirection_V22.CameraDirection
    public typealias ScrollMode = ScrollMode_V22.ScrollMode
    public typealias LayerTextAlignment = LayerTextAlignment_V22.LayerTextAlignment
    public typealias LayerTextVerticalAlignment = LayerTextVerticalAlignment_V22.LayerTextVerticalAlignment
    public typealias VisualMediaFitStyle = VisualMediaFitStyle_V22.VisualMediaFitStyle
    public typealias ClassicAnimationCurve = ClassicAnimationCurve_V22.ClassicAnimationCurve
    public typealias LightType = LightType_V22.LightType
    public typealias LayerStroke = LayerStroke_V22.LayerStroke
    public typealias DateAndTimeFormat = DateAndTimeFormat_V22.DateAndTimeFormat
    public typealias CustomShape = CustomShape_V22.CustomShape
    public typealias ScrollJumpStyle = ScrollJumpStyle_V22.ScrollJumpStyle
    public typealias ScrollDecelerationRate = ScrollDecelerationRate_V22.ScrollDecelerationRate
    public typealias PortValueComparable = PortValueComparable_V22.PortValueComparable
    public typealias DelayStyle = DelayStyle_V22.DelayStyle
    public typealias ShapeCoordinates = ShapeCoordinates_V22.ShapeCoordinates
    public typealias ShapeCommandType = ShapeCommandType_V22.ShapeCommandType
    public typealias ShapeCommand = ShapeCommand_V22.ShapeCommand
    public typealias StitchOrientation = StitchOrientation_V22.StitchOrientation
    public typealias StitchCameraOrientation = StitchCameraOrientation_V22.StitchCameraOrientation
    public typealias StitchDeviceOrientation = StitchDeviceOrientation_V22.StitchDeviceOrientation
    public typealias StitchFont = StitchFont_V22.StitchFont
    public typealias LayerTextDecoration = LayerTextDecoration_V22.LayerTextDecoration
    public typealias StitchBlendMode = StitchBlendMode_V22.StitchBlendMode
    public typealias StitchMapType = StitchMapType_V22.StitchMapType
    public typealias ProgressIndicatorStyle = ProgressIndicatorStyle_V22.ProgressIndicatorStyle
    public typealias MobileHapticStyle = MobileHapticStyle_V22.MobileHapticStyle
    public typealias StrokeLineCap = StrokeLineCap_V22.StrokeLineCap
    public typealias StrokeLineJoin = StrokeLineJoin_V22.StrokeLineJoin
    public typealias StitchContentMode = StitchContentMode_V22.StitchContentMode
    public typealias StitchSpacing = StitchSpacing_V22.StitchSpacing
    public typealias StitchPadding = StitchPadding_V22.StitchPadding
    public typealias SizingScenario = SizingScenario_V22.SizingScenario
    // MARK: - end
    
    public enum PortValue: Codable, Equatable {
        case string(StitchStringValue)
        case bool(Bool)
        case int(Int) // e.g  nodeId or index?
        case number(Double) // e.g. CGFloat, part of CGSize, etc.
        case layerDimension(LayerDimension)
        case matrixTransform(StitchMatrix)
        case plane(Plane)
        case networkRequestType(NetworkRequestType)
        case color(Color)
        case size(LayerSize)
        case position(StitchPosition) // TODO: use `CGPoint` instead of `CGSize`
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

extension PortValue_V22.PortValue: StitchVersionedCodable {
    public init(previousInstance: PortValue_V22.PreviousInstance) {
        switch previousInstance {
            
        case .string(let value):
            self = .string(PortValue_V22.StitchStringValue(previousInstance: value))
        case .bool(let value):
            self = .bool(value)
        case .int(let value):
            self = .int(value)
        case .number(let value):
            self = .number(value)
        case .layerDimension(let value):
            self = .layerDimension(PortValue_V22.LayerDimension(previousInstance: value))
        case .matrixTransform(let value):
            self = .matrixTransform(value)
        case .plane(let value):
            self = .plane(PortValue_V22.Plane(previousInstance: value))
        case .networkRequestType(let value):
            self = .networkRequestType(PortValue_V22.NetworkRequestType(previousInstance: value))
        case .color(let value):
            self = .color(value)
        case .size(let value):
            self = .size(PortValue_V22.LayerSize(previousInstance: value))
        case .position(let value):
            self = .position(value)
        case .point3D(let value):
#if !os(visionOS)
            self = .point3D(PortValue_V22.Point3D(previousInstance: value))
#else
            let point3d = Point3D(x: value.x,
                                  y: value.y,
                                  z: value.z)
            self = .point3D(point3d)
#endif
        case .point4D(let value):
            self = .point4D(PortValue_V22.Point4D(previousInstance: value))
        case .pulse(let value):
            self = .pulse(value)
        case .asyncMedia(let value):
            self = .asyncMedia(PortValue_V22.AsyncMediaValue(previousInstance: value))
        case .json(let value):
            self = .json(PortValue_V22.StitchJSON(previousInstance: value))
        case .anchoring(let value):
            self = .anchoring(PortValue_V22.Anchoring(previousInstance: value))
        case .cameraDirection(let value):
            self = .cameraDirection(PortValue_V22.CameraDirection(previousInstance: value))
        case .assignedLayer(let value):
            self = .assignedLayer(value)
        case .scrollMode(let value):
            self = .scrollMode(PortValue_V22.ScrollMode(previousInstance: value))
        case .textAlignment(let value):
            self = .textAlignment(PortValue_V22.LayerTextAlignment(previousInstance: value))
        case .textVerticalAlignment(let value):
            self = .textVerticalAlignment(PortValue_V22.LayerTextVerticalAlignment(previousInstance: value))
        case .fitStyle(let value):
            self = .fitStyle(PortValue_V22.VisualMediaFitStyle(previousInstance: value))
        case .animationCurve(let value):
            self = .animationCurve(PortValue_V22.ClassicAnimationCurve(previousInstance: value))
        case .lightType(let value):
            self = .lightType(PortValue_V22.LightType(previousInstance: value))
        case .layerStroke(let value):
            self = .layerStroke(PortValue_V22.LayerStroke(previousInstance: value))
        case .textTransform(let value):
            self = .textTransform(value)
        case .dateAndTimeFormat(let value):
            self = .dateAndTimeFormat(PortValue_V22.DateAndTimeFormat(previousInstance: value))
        case .shape(let value):
            self = .shape(PortValue_V22.CustomShape(previousInstance: value))
        case .scrollJumpStyle(let value):
            self = .scrollJumpStyle(PortValue_V22.ScrollJumpStyle(previousInstance: value))
        case .scrollDecelerationRate(let value):
            self = .scrollDecelerationRate(PortValue_V22.ScrollDecelerationRate(previousInstance: value))
        case .comparable(let value):
            self = .comparable(PortValue_V22.PortValueComparable(previousInstance: value))
        case .delayStyle(let value):
            self = .delayStyle(PortValue_V22.DelayStyle(previousInstance: value))
        case .shapeCoordinates(let value):
            self = .shapeCoordinates(PortValue_V22.ShapeCoordinates(previousInstance: value))
        case .shapeCommandType(let value):
            self = .shapeCommandType(PortValue_V22.ShapeCommandType(previousInstance: value))
        case .shapeCommand(let value):
            self = .shapeCommand(PortValue_V22.ShapeCommand(previousInstance: value))
        case .orientation(let value):
            self = .orientation(PortValue_V22.StitchOrientation(previousInstance: value))
        case .cameraOrientation(let value):
            self = .cameraOrientation(PortValue_V22.StitchCameraOrientation(previousInstance: value))
        case .deviceOrientation(let value):
            self = .deviceOrientation(PortValue_V22.StitchDeviceOrientation(previousInstance: value))
        case .vnImageCropOption(let value):
            self = .vnImageCropOption(value)
        case .textDecoration(let value):
            self = .textDecoration(PortValue_V22.LayerTextDecoration(previousInstance: value))
        case .textFont(let value):
            self = .textFont(PortValue_V22.StitchFont(previousInstance: value))
        case .blendMode(let value):
            self = .blendMode(PortValue_V22.StitchBlendMode(previousInstance: value))
        case .none:
            self = .none
        case .mapType(let value):
            self = .mapType(PortValue_V22.StitchMapType(previousInstance: value))
        case .progressIndicatorStyle(let value):
            self = .progressIndicatorStyle(PortValue_V22.ProgressIndicatorStyle(previousInstance: value))
        case .mobileHapticStyle(let value):
            self = .mobileHapticStyle(PortValue_V22.MobileHapticStyle(previousInstance: value))
        case .strokeLineCap(let value):
            self = .strokeLineCap(PortValue_V22.StrokeLineCap(previousInstance: value))
        case .strokeLineJoin(let value):
            self = .strokeLineJoin(PortValue_V22.StrokeLineJoin(previousInstance: value))
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
