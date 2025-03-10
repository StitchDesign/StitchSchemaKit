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

public enum PortValue_V28: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V28
    public typealias PreviousInstance = PortValue_V27.PortValue
    public typealias StitchStringValue = StitchStringValue_V28.StitchStringValue
    public typealias LayerDimension = LayerDimension_V28.LayerDimension
    public typealias Plane = Plane_V28.Plane
    public typealias NetworkRequestType = NetworkRequestType_V28.NetworkRequestType
    public typealias LayerSize = LayerSize_V28.LayerSize
#if !os(visionOS)
    public typealias Point3D = Point3D_V28.Point3D
#endif
    public typealias Point4D = Point4D_V28.Point4D
    public typealias AsyncMediaValue = AsyncMediaValue_V28.AsyncMediaValue
    public typealias StitchJSON = StitchJSON_V28.StitchJSON
    public typealias Anchoring = Anchoring_V28.Anchoring
    public typealias CameraDirection = CameraDirection_V28.CameraDirection
    public typealias ScrollMode = ScrollMode_V28.ScrollMode
    public typealias LayerTextAlignment = LayerTextAlignment_V28.LayerTextAlignment
    public typealias LayerTextVerticalAlignment = LayerTextVerticalAlignment_V28.LayerTextVerticalAlignment
    public typealias VisualMediaFitStyle = VisualMediaFitStyle_V28.VisualMediaFitStyle
    public typealias ClassicAnimationCurve = ClassicAnimationCurve_V28.ClassicAnimationCurve
    public typealias LightType = LightType_V28.LightType
    public typealias LayerStroke = LayerStroke_V28.LayerStroke
    public typealias DateAndTimeFormat = DateAndTimeFormat_V28.DateAndTimeFormat
    public typealias CustomShape = CustomShape_V28.CustomShape
    public typealias ScrollJumpStyle = ScrollJumpStyle_V28.ScrollJumpStyle
    public typealias ScrollDecelerationRate = ScrollDecelerationRate_V28.ScrollDecelerationRate
    public typealias PortValueComparable = PortValueComparable_V28.PortValueComparable
    public typealias DelayStyle = DelayStyle_V28.DelayStyle
    public typealias ShapeCoordinates = ShapeCoordinates_V28.ShapeCoordinates
    public typealias ShapeCommandType = ShapeCommandType_V28.ShapeCommandType
    public typealias ShapeCommand = ShapeCommand_V28.ShapeCommand
    public typealias StitchOrientation = StitchOrientation_V28.StitchOrientation
    public typealias StitchCameraOrientation = StitchCameraOrientation_V28.StitchCameraOrientation
    public typealias StitchDeviceOrientation = StitchDeviceOrientation_V28.StitchDeviceOrientation
    public typealias StitchFont = StitchFont_V28.StitchFont
    public typealias LayerTextDecoration = LayerTextDecoration_V28.LayerTextDecoration
    public typealias StitchBlendMode = StitchBlendMode_V28.StitchBlendMode
    public typealias StitchMapType = StitchMapType_V28.StitchMapType
    public typealias ProgressIndicatorStyle = ProgressIndicatorStyle_V28.ProgressIndicatorStyle
    public typealias MobileHapticStyle = MobileHapticStyle_V28.MobileHapticStyle
    public typealias StrokeLineCap = StrokeLineCap_V28.StrokeLineCap
    public typealias StrokeLineJoin = StrokeLineJoin_V28.StrokeLineJoin
    public typealias StitchContentMode = StitchContentMode_V28.StitchContentMode
    public typealias StitchSpacing = StitchSpacing_V28.StitchSpacing
    public typealias StitchPadding = StitchPadding_V28.StitchPadding
    public typealias SizingScenario = SizingScenario_V28.SizingScenario
    public typealias PinToId = PinToId_V28.PinToId
    public typealias LayerNodeId = LayerNodeId_V28.LayerNodeId
    public typealias TextTransform = TextTransform_V28.TextTransform
    public typealias StitchTransform = StitchTransform_V28.StitchTransform
    public typealias DeviceAppearance = DeviceAppearance_V28.DeviceAppearance
    public typealias MaterialThickness = MaterialThickness_V28.MaterialThickness
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

extension PortValue_V28.PortValue: StitchVersionedCodable {
    public init(previousInstance: PortValue_V28.PreviousInstance) {
        switch previousInstance {
            
        case .string(let value):
            self = .string(PortValue_V28.StitchStringValue(previousInstance: value))
        case .bool(let value):
            self = .bool(value)
        case .int(let value):
            self = .int(value)
        case .number(let value):
            self = .number(value)
        case .layerDimension(let value):
            self = .layerDimension(PortValue_V28.LayerDimension(previousInstance: value))
        case .transform(let value):
            self = .transform(.init(previousInstance: value))
        case .plane(let value):
            self = .plane(PortValue_V28.Plane(previousInstance: value))
        case .networkRequestType(let value):
            self = .networkRequestType(PortValue_V28.NetworkRequestType(previousInstance: value))
        case .color(let value):
            self = .color(value)
        case .size(let value):
            self = .size(PortValue_V28.LayerSize(previousInstance: value))
        case .position(let value):
            self = .position(value)
        case .point3D(let value):
#if !os(visionOS)
            self = .point3D(PortValue_V28.Point3D(previousInstance: value))
#else
            let point3d = Point3D(x: value.x,
                                  y: value.y,
                                  z: value.z)
            self = .point3D(point3d)
#endif
        case .point4D(let value):
            self = .point4D(PortValue_V28.Point4D(previousInstance: value))
        case .pulse(let value):
            self = .pulse(value)
        case .asyncMedia(let value):
            self = .asyncMedia(PortValue_V28.AsyncMediaValue(previousInstance: value))
        case .json(let value):
            self = .json(PortValue_V28.StitchJSON(previousInstance: value))
        case .anchoring(let value):
            self = .anchoring(PortValue_V28.Anchoring(previousInstance: value))
        case .cameraDirection(let value):
            self = .cameraDirection(PortValue_V28.CameraDirection(previousInstance: value))
        case .assignedLayer(let value):
            self = .assignedLayer(.init(previousInstance: value))
        case .scrollMode(let value):
            self = .scrollMode(PortValue_V28.ScrollMode(previousInstance: value))
        case .textAlignment(let value):
            self = .textAlignment(PortValue_V28.LayerTextAlignment(previousInstance: value))
        case .textVerticalAlignment(let value):
            self = .textVerticalAlignment(PortValue_V28.LayerTextVerticalAlignment(previousInstance: value))
        case .fitStyle(let value):
            self = .fitStyle(PortValue_V28.VisualMediaFitStyle(previousInstance: value))
        case .animationCurve(let value):
            self = .animationCurve(PortValue_V28.ClassicAnimationCurve(previousInstance: value))
        case .lightType(let value):
            self = .lightType(PortValue_V28.LightType(previousInstance: value))
        case .layerStroke(let value):
            self = .layerStroke(PortValue_V28.LayerStroke(previousInstance: value))
        case .textTransform(let value):
            self = .textTransform(.init(previousInstance: value))
        case .dateAndTimeFormat(let value):
            self = .dateAndTimeFormat(PortValue_V28.DateAndTimeFormat(previousInstance: value))
        case .shape(let value):
            self = .shape(PortValue_V28.CustomShape(previousInstance: value))
        case .scrollJumpStyle(let value):
            self = .scrollJumpStyle(PortValue_V28.ScrollJumpStyle(previousInstance: value))
        case .scrollDecelerationRate(let value):
            self = .scrollDecelerationRate(PortValue_V28.ScrollDecelerationRate(previousInstance: value))
        case .comparable(let value):
            self = .comparable(PortValue_V28.PortValueComparable(previousInstance: value))
        case .delayStyle(let value):
            self = .delayStyle(PortValue_V28.DelayStyle(previousInstance: value))
        case .shapeCoordinates(let value):
            self = .shapeCoordinates(PortValue_V28.ShapeCoordinates(previousInstance: value))
        case .shapeCommandType(let value):
            self = .shapeCommandType(PortValue_V28.ShapeCommandType(previousInstance: value))
        case .shapeCommand(let value):
            self = .shapeCommand(PortValue_V28.ShapeCommand(previousInstance: value))
        case .orientation(let value):
            self = .orientation(PortValue_V28.StitchOrientation(previousInstance: value))
        case .cameraOrientation(let value):
            self = .cameraOrientation(PortValue_V28.StitchCameraOrientation(previousInstance: value))
        case .deviceOrientation(let value):
            self = .deviceOrientation(PortValue_V28.StitchDeviceOrientation(previousInstance: value))
        case .vnImageCropOption(let value):
            self = .vnImageCropOption(value)
        case .textDecoration(let value):
            self = .textDecoration(PortValue_V28.LayerTextDecoration(previousInstance: value))
        case .textFont(let value):
            self = .textFont(PortValue_V28.StitchFont(previousInstance: value))
        case .blendMode(let value):
            self = .blendMode(PortValue_V28.StitchBlendMode(previousInstance: value))
        case .none:
            self = .none
        case .mapType(let value):
            self = .mapType(PortValue_V28.StitchMapType(previousInstance: value))
        case .progressIndicatorStyle(let value):
            self = .progressIndicatorStyle(PortValue_V28.ProgressIndicatorStyle(previousInstance: value))
        case .mobileHapticStyle(let value):
            self = .mobileHapticStyle(PortValue_V28.MobileHapticStyle(previousInstance: value))
        case .strokeLineCap(let value):
            self = .strokeLineCap(PortValue_V28.StrokeLineCap(previousInstance: value))
        case .strokeLineJoin(let value):
            self = .strokeLineJoin(PortValue_V28.StrokeLineJoin(previousInstance: value))
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
