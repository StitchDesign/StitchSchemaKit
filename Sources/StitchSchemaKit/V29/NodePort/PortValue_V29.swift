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

public enum PortValue_V29: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V29
    public typealias PreviousInstance = PortValue_V28.PortValue
    public typealias StitchStringValue = StitchStringValue_V29.StitchStringValue
    public typealias LayerDimension = LayerDimension_V29.LayerDimension
    public typealias Plane = Plane_V29.Plane
    public typealias NetworkRequestType = NetworkRequestType_V29.NetworkRequestType
    public typealias LayerSize = LayerSize_V29.LayerSize
#if !os(visionOS)
    public typealias Point3D = Point3D_V29.Point3D
#endif
    public typealias Point4D = Point4D_V29.Point4D
    public typealias AsyncMediaValue = AsyncMediaValue_V29.AsyncMediaValue
    public typealias StitchJSON = StitchJSON_V29.StitchJSON
    public typealias Anchoring = Anchoring_V29.Anchoring
    public typealias CameraDirection = CameraDirection_V29.CameraDirection
    public typealias ScrollMode = ScrollMode_V29.ScrollMode
    public typealias LayerTextAlignment = LayerTextAlignment_V29.LayerTextAlignment
    public typealias LayerTextVerticalAlignment = LayerTextVerticalAlignment_V29.LayerTextVerticalAlignment
    public typealias VisualMediaFitStyle = VisualMediaFitStyle_V29.VisualMediaFitStyle
    public typealias ClassicAnimationCurve = ClassicAnimationCurve_V29.ClassicAnimationCurve
    public typealias LightType = LightType_V29.LightType
    public typealias LayerStroke = LayerStroke_V29.LayerStroke
    public typealias DateAndTimeFormat = DateAndTimeFormat_V29.DateAndTimeFormat
    public typealias CustomShape = CustomShape_V29.CustomShape
    public typealias ScrollJumpStyle = ScrollJumpStyle_V29.ScrollJumpStyle
    public typealias ScrollDecelerationRate = ScrollDecelerationRate_V29.ScrollDecelerationRate
    public typealias PortValueComparable = PortValueComparable_V29.PortValueComparable
    public typealias DelayStyle = DelayStyle_V29.DelayStyle
    public typealias ShapeCoordinates = ShapeCoordinates_V29.ShapeCoordinates
    public typealias ShapeCommandType = ShapeCommandType_V29.ShapeCommandType
    public typealias ShapeCommand = ShapeCommand_V29.ShapeCommand
    public typealias StitchOrientation = StitchOrientation_V29.StitchOrientation
    public typealias StitchCameraOrientation = StitchCameraOrientation_V29.StitchCameraOrientation
    public typealias StitchDeviceOrientation = StitchDeviceOrientation_V29.StitchDeviceOrientation
    public typealias StitchFont = StitchFont_V29.StitchFont
    public typealias LayerTextDecoration = LayerTextDecoration_V29.LayerTextDecoration
    public typealias StitchBlendMode = StitchBlendMode_V29.StitchBlendMode
    public typealias StitchMapType = StitchMapType_V29.StitchMapType
    public typealias ProgressIndicatorStyle = ProgressIndicatorStyle_V29.ProgressIndicatorStyle
    public typealias MobileHapticStyle = MobileHapticStyle_V29.MobileHapticStyle
    public typealias StrokeLineCap = StrokeLineCap_V29.StrokeLineCap
    public typealias StrokeLineJoin = StrokeLineJoin_V29.StrokeLineJoin
    public typealias StitchContentMode = StitchContentMode_V29.StitchContentMode
    public typealias StitchSpacing = StitchSpacing_V29.StitchSpacing
    public typealias StitchPadding = StitchPadding_V29.StitchPadding
    public typealias SizingScenario = SizingScenario_V29.SizingScenario
    public typealias PinToId = PinToId_V29.PinToId
    public typealias LayerNodeId = LayerNodeId_V29.LayerNodeId
    public typealias TextTransform = TextTransform_V29.TextTransform
    public typealias StitchTransform = StitchTransform_V29.StitchTransform
    public typealias DeviceAppearance = DeviceAppearance_V29.DeviceAppearance
    public typealias MaterialThickness = MaterialThickness_V29.MaterialThickness
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

extension PortValue_V29.PortValue: StitchVersionedCodable {
    public init(previousInstance: PortValue_V29.PreviousInstance) {
        switch previousInstance {
            
        case .string(let value):
            self = .string(PortValue_V29.StitchStringValue(previousInstance: value))
        case .bool(let value):
            self = .bool(value)
        case .int(let value):
            self = .int(value)
        case .number(let value):
            self = .number(value)
        case .layerDimension(let value):
            self = .layerDimension(PortValue_V29.LayerDimension(previousInstance: value))
        case .transform(let value):
            self = .transform(.init(previousInstance: value))
        case .plane(let value):
            self = .plane(PortValue_V29.Plane(previousInstance: value))
        case .networkRequestType(let value):
            self = .networkRequestType(PortValue_V29.NetworkRequestType(previousInstance: value))
        case .color(let value):
            self = .color(value)
        case .size(let value):
            self = .size(PortValue_V29.LayerSize(previousInstance: value))
        case .position(let value):
            self = .position(value)
        case .point3D(let value):
#if !os(visionOS)
            self = .point3D(PortValue_V29.Point3D(previousInstance: value))
#else
            let point3d = Point3D(x: value.x,
                                  y: value.y,
                                  z: value.z)
            self = .point3D(point3d)
#endif
        case .point4D(let value):
            self = .point4D(PortValue_V29.Point4D(previousInstance: value))
        case .pulse(let value):
            self = .pulse(value)
        case .asyncMedia(let value):
            self = .asyncMedia(PortValue_V29.AsyncMediaValue(previousInstance: value))
        case .json(let value):
            self = .json(PortValue_V29.StitchJSON(previousInstance: value))
        case .anchoring(let value):
            self = .anchoring(PortValue_V29.Anchoring(previousInstance: value))
        case .cameraDirection(let value):
            self = .cameraDirection(PortValue_V29.CameraDirection(previousInstance: value))
        case .assignedLayer(let value):
            self = .assignedLayer(.init(previousInstance: value))
        case .scrollMode(let value):
            self = .scrollMode(PortValue_V29.ScrollMode(previousInstance: value))
        case .textAlignment(let value):
            self = .textAlignment(PortValue_V29.LayerTextAlignment(previousInstance: value))
        case .textVerticalAlignment(let value):
            self = .textVerticalAlignment(PortValue_V29.LayerTextVerticalAlignment(previousInstance: value))
        case .fitStyle(let value):
            self = .fitStyle(PortValue_V29.VisualMediaFitStyle(previousInstance: value))
        case .animationCurve(let value):
            self = .animationCurve(PortValue_V29.ClassicAnimationCurve(previousInstance: value))
        case .lightType(let value):
            self = .lightType(PortValue_V29.LightType(previousInstance: value))
        case .layerStroke(let value):
            self = .layerStroke(PortValue_V29.LayerStroke(previousInstance: value))
        case .textTransform(let value):
            self = .textTransform(.init(previousInstance: value))
        case .dateAndTimeFormat(let value):
            self = .dateAndTimeFormat(PortValue_V29.DateAndTimeFormat(previousInstance: value))
        case .shape(let value):
            self = .shape(PortValue_V29.CustomShape(previousInstance: value))
        case .scrollJumpStyle(let value):
            self = .scrollJumpStyle(PortValue_V29.ScrollJumpStyle(previousInstance: value))
        case .scrollDecelerationRate(let value):
            self = .scrollDecelerationRate(PortValue_V29.ScrollDecelerationRate(previousInstance: value))
        case .comparable(let value):
            self = .comparable(PortValue_V29.PortValueComparable(previousInstance: value))
        case .delayStyle(let value):
            self = .delayStyle(PortValue_V29.DelayStyle(previousInstance: value))
        case .shapeCoordinates(let value):
            self = .shapeCoordinates(PortValue_V29.ShapeCoordinates(previousInstance: value))
        case .shapeCommandType(let value):
            self = .shapeCommandType(PortValue_V29.ShapeCommandType(previousInstance: value))
        case .shapeCommand(let value):
            self = .shapeCommand(PortValue_V29.ShapeCommand(previousInstance: value))
        case .orientation(let value):
            self = .orientation(PortValue_V29.StitchOrientation(previousInstance: value))
        case .cameraOrientation(let value):
            self = .cameraOrientation(PortValue_V29.StitchCameraOrientation(previousInstance: value))
        case .deviceOrientation(let value):
            self = .deviceOrientation(PortValue_V29.StitchDeviceOrientation(previousInstance: value))
        case .vnImageCropOption(let value):
            self = .vnImageCropOption(value)
        case .textDecoration(let value):
            self = .textDecoration(PortValue_V29.LayerTextDecoration(previousInstance: value))
        case .textFont(let value):
            self = .textFont(PortValue_V29.StitchFont(previousInstance: value))
        case .blendMode(let value):
            self = .blendMode(PortValue_V29.StitchBlendMode(previousInstance: value))
        case .none:
            self = .none
        case .mapType(let value):
            self = .mapType(PortValue_V29.StitchMapType(previousInstance: value))
        case .progressIndicatorStyle(let value):
            self = .progressIndicatorStyle(PortValue_V29.ProgressIndicatorStyle(previousInstance: value))
        case .mobileHapticStyle(let value):
            self = .mobileHapticStyle(PortValue_V29.MobileHapticStyle(previousInstance: value))
        case .strokeLineCap(let value):
            self = .strokeLineCap(PortValue_V29.StrokeLineCap(previousInstance: value))
        case .strokeLineJoin(let value):
            self = .strokeLineJoin(PortValue_V29.StrokeLineJoin(previousInstance: value))
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
