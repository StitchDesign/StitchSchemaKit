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

public enum PortValue_V27: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V27
    public typealias PreviousInstance = PortValue_V26.PortValue
    public typealias StitchStringValue = StitchStringValue_V27.StitchStringValue
    public typealias LayerDimension = LayerDimension_V27.LayerDimension
    public typealias Plane = Plane_V27.Plane
    public typealias NetworkRequestType = NetworkRequestType_V27.NetworkRequestType
    public typealias LayerSize = LayerSize_V27.LayerSize
#if !os(visionOS)
    public typealias Point3D = Point3D_V27.Point3D
#endif
    public typealias Point4D = Point4D_V27.Point4D
    public typealias AsyncMediaValue = AsyncMediaValue_V27.AsyncMediaValue
    public typealias StitchJSON = StitchJSON_V27.StitchJSON
    public typealias Anchoring = Anchoring_V27.Anchoring
    public typealias CameraDirection = CameraDirection_V27.CameraDirection
    public typealias ScrollMode = ScrollMode_V27.ScrollMode
    public typealias LayerTextAlignment = LayerTextAlignment_V27.LayerTextAlignment
    public typealias LayerTextVerticalAlignment = LayerTextVerticalAlignment_V27.LayerTextVerticalAlignment
    public typealias VisualMediaFitStyle = VisualMediaFitStyle_V27.VisualMediaFitStyle
    public typealias ClassicAnimationCurve = ClassicAnimationCurve_V27.ClassicAnimationCurve
    public typealias LightType = LightType_V27.LightType
    public typealias LayerStroke = LayerStroke_V27.LayerStroke
    public typealias DateAndTimeFormat = DateAndTimeFormat_V27.DateAndTimeFormat
    public typealias CustomShape = CustomShape_V27.CustomShape
    public typealias ScrollJumpStyle = ScrollJumpStyle_V27.ScrollJumpStyle
    public typealias ScrollDecelerationRate = ScrollDecelerationRate_V27.ScrollDecelerationRate
    public typealias PortValueComparable = PortValueComparable_V27.PortValueComparable
    public typealias DelayStyle = DelayStyle_V27.DelayStyle
    public typealias ShapeCoordinates = ShapeCoordinates_V27.ShapeCoordinates
    public typealias ShapeCommandType = ShapeCommandType_V27.ShapeCommandType
    public typealias ShapeCommand = ShapeCommand_V27.ShapeCommand
    public typealias StitchOrientation = StitchOrientation_V27.StitchOrientation
    public typealias StitchCameraOrientation = StitchCameraOrientation_V27.StitchCameraOrientation
    public typealias StitchDeviceOrientation = StitchDeviceOrientation_V27.StitchDeviceOrientation
    public typealias StitchFont = StitchFont_V27.StitchFont
    public typealias LayerTextDecoration = LayerTextDecoration_V27.LayerTextDecoration
    public typealias StitchBlendMode = StitchBlendMode_V27.StitchBlendMode
    public typealias StitchMapType = StitchMapType_V27.StitchMapType
    public typealias ProgressIndicatorStyle = ProgressIndicatorStyle_V27.ProgressIndicatorStyle
    public typealias MobileHapticStyle = MobileHapticStyle_V27.MobileHapticStyle
    public typealias StrokeLineCap = StrokeLineCap_V27.StrokeLineCap
    public typealias StrokeLineJoin = StrokeLineJoin_V27.StrokeLineJoin
    public typealias StitchContentMode = StitchContentMode_V27.StitchContentMode
    public typealias StitchSpacing = StitchSpacing_V27.StitchSpacing
    public typealias StitchPadding = StitchPadding_V27.StitchPadding
    public typealias SizingScenario = SizingScenario_V27.SizingScenario
    public typealias PinToId = PinToId_V27.PinToId
    public typealias LayerNodeId = LayerNodeId_V27.LayerNodeId
    public typealias TextTransform = TextTransform_V27.TextTransform
    public typealias StitchTransform = StitchTransform_V27.StitchTransform
    public typealias DeviceAppearance = DeviceAppearance_V27.DeviceAppearance
    public typealias MaterialThickness = MaterialThickness_V27.MaterialThickness
    // MARK: - end
    
    public enum PortValue: Codable, Hashable {
        case string(StitchStringValue)
        case bool(Bool)
        case int(Int) // e.g  nodeId or index?
        case number(Double) // e.g. CGFloat, part of CGSize, etc.
        case layerDimension(LayerDimension)
        case transform(StitchTransform)
        case plane(Plane)
        case networkRequestType(NetworkRequestType)
        case color(Color)
        case size(LayerSize)
        case position(CGPoint)
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
        case pinTo(PinToId)
        case deviceAppearance(DeviceAppearance)
        case materialThickness(MaterialThickness)
    }
}

extension PortValue_V27.PortValue: StitchVersionedCodable {
    public init(previousInstance: PortValue_V27.PreviousInstance) {
        switch previousInstance {
            
        case .string(let value):
            self = .string(PortValue_V27.StitchStringValue(previousInstance: value))
        case .bool(let value):
            self = .bool(value)
        case .int(let value):
            self = .int(value)
        case .number(let value):
            self = .number(value)
        case .layerDimension(let value):
            self = .layerDimension(PortValue_V27.LayerDimension(previousInstance: value))
        case .transform(let value):
            self = .transform(.init(previousInstance: value))
        case .plane(let value):
            self = .plane(PortValue_V27.Plane(previousInstance: value))
        case .networkRequestType(let value):
            self = .networkRequestType(PortValue_V27.NetworkRequestType(previousInstance: value))
        case .color(let value):
            self = .color(value)
        case .size(let value):
            self = .size(PortValue_V27.LayerSize(previousInstance: value))
        case .position(let value):
            self = .position(value)
        case .point3D(let value):
#if !os(visionOS)
            self = .point3D(PortValue_V27.Point3D(previousInstance: value))
#else
            let point3d = Point3D(x: value.x,
                                  y: value.y,
                                  z: value.z)
            self = .point3D(point3d)
#endif
        case .point4D(let value):
            self = .point4D(PortValue_V27.Point4D(previousInstance: value))
        case .pulse(let value):
            self = .pulse(value)
        case .asyncMedia(let value):
            self = .asyncMedia(PortValue_V27.AsyncMediaValue(previousInstance: value))
        case .json(let value):
            self = .json(PortValue_V27.StitchJSON(previousInstance: value))
        case .anchoring(let value):
            self = .anchoring(PortValue_V27.Anchoring(previousInstance: value))
        case .cameraDirection(let value):
            self = .cameraDirection(PortValue_V27.CameraDirection(previousInstance: value))
        case .assignedLayer(let value):
            self = .assignedLayer(.init(previousInstance: value))
        case .scrollMode(let value):
            self = .scrollMode(PortValue_V27.ScrollMode(previousInstance: value))
        case .textAlignment(let value):
            self = .textAlignment(PortValue_V27.LayerTextAlignment(previousInstance: value))
        case .textVerticalAlignment(let value):
            self = .textVerticalAlignment(PortValue_V27.LayerTextVerticalAlignment(previousInstance: value))
        case .fitStyle(let value):
            self = .fitStyle(PortValue_V27.VisualMediaFitStyle(previousInstance: value))
        case .animationCurve(let value):
            self = .animationCurve(PortValue_V27.ClassicAnimationCurve(previousInstance: value))
        case .lightType(let value):
            self = .lightType(PortValue_V27.LightType(previousInstance: value))
        case .layerStroke(let value):
            self = .layerStroke(PortValue_V27.LayerStroke(previousInstance: value))
        case .textTransform(let value):
            self = .textTransform(.init(previousInstance: value))
        case .dateAndTimeFormat(let value):
            self = .dateAndTimeFormat(PortValue_V27.DateAndTimeFormat(previousInstance: value))
        case .shape(let value):
            self = .shape(PortValue_V27.CustomShape(previousInstance: value))
        case .scrollJumpStyle(let value):
            self = .scrollJumpStyle(PortValue_V27.ScrollJumpStyle(previousInstance: value))
        case .scrollDecelerationRate(let value):
            self = .scrollDecelerationRate(PortValue_V27.ScrollDecelerationRate(previousInstance: value))
        case .comparable(let value):
            self = .comparable(PortValue_V27.PortValueComparable(previousInstance: value))
        case .delayStyle(let value):
            self = .delayStyle(PortValue_V27.DelayStyle(previousInstance: value))
        case .shapeCoordinates(let value):
            self = .shapeCoordinates(PortValue_V27.ShapeCoordinates(previousInstance: value))
        case .shapeCommandType(let value):
            self = .shapeCommandType(PortValue_V27.ShapeCommandType(previousInstance: value))
        case .shapeCommand(let value):
            self = .shapeCommand(PortValue_V27.ShapeCommand(previousInstance: value))
        case .orientation(let value):
            self = .orientation(PortValue_V27.StitchOrientation(previousInstance: value))
        case .cameraOrientation(let value):
            self = .cameraOrientation(PortValue_V27.StitchCameraOrientation(previousInstance: value))
        case .deviceOrientation(let value):
            self = .deviceOrientation(PortValue_V27.StitchDeviceOrientation(previousInstance: value))
        case .vnImageCropOption(let value):
            self = .vnImageCropOption(value)
        case .textDecoration(let value):
            self = .textDecoration(PortValue_V27.LayerTextDecoration(previousInstance: value))
        case .textFont(let value):
            self = .textFont(PortValue_V27.StitchFont(previousInstance: value))
        case .blendMode(let value):
            self = .blendMode(PortValue_V27.StitchBlendMode(previousInstance: value))
        case .none:
            self = .none
        case .mapType(let value):
            self = .mapType(PortValue_V27.StitchMapType(previousInstance: value))
        case .progressIndicatorStyle(let value):
            self = .progressIndicatorStyle(PortValue_V27.ProgressIndicatorStyle(previousInstance: value))
        case .mobileHapticStyle(let value):
            self = .mobileHapticStyle(PortValue_V27.MobileHapticStyle(previousInstance: value))
        case .strokeLineCap(let value):
            self = .strokeLineCap(PortValue_V27.StrokeLineCap(previousInstance: value))
        case .strokeLineJoin(let value):
            self = .strokeLineJoin(PortValue_V27.StrokeLineJoin(previousInstance: value))
        case .contentMode(let value):
            self = .contentMode(.init(previousInstance: value))
        case .spacing(let value):
            self = .spacing(.init(previousInstance: value))
        case .padding(let value):
            self = .padding(.init(previousInstance: value))
        case .sizingScenario(let value):
            self = .sizingScenario(.init(previousInstance: value))
        case .pinTo(let value):
            self = .pinTo(.init(previousInstance: value))
        case .deviceAppearance(let value):
            self = .deviceAppearance(.init(previousInstance: value))
        case .materialThickness(let value):
            self = .materialThickness(.init(previousInstance: value))
        }
    }
}
