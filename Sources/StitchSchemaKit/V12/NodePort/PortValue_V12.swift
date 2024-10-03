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

public enum PortValue_V12: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V12
    public typealias PreviousInstance = PortValue_V11.PortValue
    public typealias LayerDimension = LayerDimension_V5.LayerDimension
    public typealias Plane = Plane_V12.Plane
    public typealias NetworkRequestType = NetworkRequestType_V12.NetworkRequestType
    public typealias LayerSize = LayerSize_V12.LayerSize
#if !os(visionOS)
    public typealias Point3D = Point3D_V12.Point3D
#endif
    public typealias Point4D = Point4D_V12.Point4D
    public typealias AsyncMediaValue = AsyncMediaValue_V12.AsyncMediaValue
    public typealias StitchJSON = StitchJSON_V12.StitchJSON
    public typealias Anchoring = Anchoring_V12.Anchoring
    public typealias CameraDirection = CameraDirection_V12.CameraDirection
    public typealias ScrollMode = ScrollMode_V12.ScrollMode
    public typealias LayerTextAlignment = LayerTextAlignment_V12.LayerTextAlignment
    public typealias LayerTextVerticalAlignment = LayerTextVerticalAlignment_V12.LayerTextVerticalAlignment
    public typealias VisualMediaFitStyle = VisualMediaFitStyle_V12.VisualMediaFitStyle
    public typealias ClassicAnimationCurve = ClassicAnimationCurve_V12.ClassicAnimationCurve
    public typealias LightType = LightType_V12.LightType
    public typealias LayerStroke = LayerStroke_V12.LayerStroke
    public typealias DateAndTimeFormat = DateAndTimeFormat_V12.DateAndTimeFormat
    public typealias CustomShape = CustomShape_V12.CustomShape
    public typealias ScrollJumpStyle = ScrollJumpStyle_V12.ScrollJumpStyle
    public typealias ScrollDecelerationRate = ScrollDecelerationRate_V12.ScrollDecelerationRate
    public typealias PortValueComparable = PortValueComparable_V12.PortValueComparable
    public typealias DelayStyle = DelayStyle_V12.DelayStyle
    public typealias ShapeCoordinates = ShapeCoordinates_V12.ShapeCoordinates
    public typealias ShapeCommandType = ShapeCommandType_V12.ShapeCommandType
    public typealias ShapeCommand = ShapeCommand_V12.ShapeCommand
    public typealias StitchOrientation = StitchOrientation_V12.StitchOrientation
    public typealias StitchCameraOrientation = StitchCameraOrientation_V12.StitchCameraOrientation
    public typealias StitchDeviceOrientation = StitchDeviceOrientation_V12.StitchDeviceOrientation
    public typealias StitchFont = StitchFont_V12.StitchFont
    public typealias LayerTextDecoration = LayerTextDecoration_V12.LayerTextDecoration
    public typealias StitchBlendMode = StitchBlendMode_V12.StitchBlendMode
    public typealias StitchMapType = StitchMapType_V12.StitchMapType
    public typealias ProgressIndicatorStyle = ProgressIndicatorStyle_V12.ProgressIndicatorStyle
    public typealias MobileHapticStyle = MobileHapticStyle_V12.MobileHapticStyle
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
    }
}

extension PortValue_V12.PortValue: StitchVersionedCodable {
    public init(previousInstance: PortValue_V12.PreviousInstance) {
        switch previousInstance {
            
        case .string(let value):
            self = .string(value)
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
            self = .plane(PortValue_V12.Plane(previousInstance: value))
        case .networkRequestType(let value):
            self = .networkRequestType(PortValue_V12.NetworkRequestType(previousInstance: value))
        case .color(let value):
            self = .color(value)
        case .size(let value):
            self = .size(PortValue_V12.LayerSize(previousInstance: value))
        case .position(let value):
            self = .position(value)
        case .point3D(let value):
#if !os(visionOS)
            self = .point3D(PortValue_V12.Point3D(previousInstance: value))
#else
            let point3d = Point3D(x: value.x,
                                  y: value.y,
                                  z: value.z)
            self = .point3D(point3d)
#endif
        case .point4D(let value):
            self = .point4D(PortValue_V12.Point4D(previousInstance: value))
        case .pulse(let value):
            self = .pulse(value)
        case .asyncMedia(let value):
            self = .asyncMedia(PortValue_V12.AsyncMediaValue(previousInstance: value))
        case .json(let value):
            self = .json(PortValue_V12.StitchJSON(previousInstance: value))
        case .anchoring(let value):
            self = .anchoring(PortValue_V12.Anchoring(previousInstance: value))
        case .cameraDirection(let value):
            self = .cameraDirection(PortValue_V12.CameraDirection(previousInstance: value))
        case .assignedLayer(let value):
            self = .assignedLayer(value)
        case .scrollMode(let value):
            self = .scrollMode(PortValue_V12.ScrollMode(previousInstance: value))
        case .textAlignment(let value):
            self = .textAlignment(PortValue_V12.LayerTextAlignment(previousInstance: value))
        case .textVerticalAlignment(let value):
            self = .textVerticalAlignment(PortValue_V12.LayerTextVerticalAlignment(previousInstance: value))
        case .fitStyle(let value):
            self = .fitStyle(PortValue_V12.VisualMediaFitStyle(previousInstance: value))
        case .animationCurve(let value):
            self = .animationCurve(PortValue_V12.ClassicAnimationCurve(previousInstance: value))
        case .lightType(let value):
            self = .lightType(PortValue_V12.LightType(previousInstance: value))
        case .layerStroke(let value):
            self = .layerStroke(PortValue_V12.LayerStroke(previousInstance: value))
        case .textTransform(let value):
            self = .textTransform(value)
        case .dateAndTimeFormat(let value):
            self = .dateAndTimeFormat(PortValue_V12.DateAndTimeFormat(previousInstance: value))
        case .shape(let value):
            self = .shape(PortValue_V12.CustomShape(previousInstance: value))
        case .scrollJumpStyle(let value):
            self = .scrollJumpStyle(PortValue_V12.ScrollJumpStyle(previousInstance: value))
        case .scrollDecelerationRate(let value):
            self = .scrollDecelerationRate(PortValue_V12.ScrollDecelerationRate(previousInstance: value))
        case .comparable(let value):
            self = .comparable(PortValue_V12.PortValueComparable(previousInstance: value))
        case .delayStyle(let value):
            self = .delayStyle(PortValue_V12.DelayStyle(previousInstance: value))
        case .shapeCoordinates(let value):
            self = .shapeCoordinates(PortValue_V12.ShapeCoordinates(previousInstance: value))
        case .shapeCommandType(let value):
            self = .shapeCommandType(PortValue_V12.ShapeCommandType(previousInstance: value))
        case .shapeCommand(let value):
            self = .shapeCommand(PortValue_V12.ShapeCommand(previousInstance: value))
        case .orientation(let value):
            self = .orientation(PortValue_V12.StitchOrientation(previousInstance: value))
        case .cameraOrientation(let value):
            self = .cameraOrientation(PortValue_V12.StitchCameraOrientation(previousInstance: value))
        case .deviceOrientation(let value):
            self = .deviceOrientation(PortValue_V12.StitchDeviceOrientation(previousInstance: value))
        case .vnImageCropOption(let value):
            self = .vnImageCropOption(value)
        case .textDecoration(let value):
            self = .textDecoration(PortValue_V12.LayerTextDecoration(previousInstance: value))
        case .textFont(let value):
            self = .textFont(PortValue_V12.StitchFont(previousInstance: value))
        case .blendMode(let value):
            self = .blendMode(PortValue_V12.StitchBlendMode(previousInstance: value))
        case .none:
            self = .none
        case .mapType(let value):
            self = .mapType(PortValue_V12.StitchMapType(previousInstance: value))
        case .progressIndicatorStyle(let value):
            self = .progressIndicatorStyle(PortValue_V12.ProgressIndicatorStyle(previousInstance: value))
        case .mobileHapticStyle(let value):
            self = .mobileHapticStyle(PortValue_V12.MobileHapticStyle(previousInstance: value))
        }
    }
}
