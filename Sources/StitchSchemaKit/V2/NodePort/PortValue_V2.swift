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

public enum PortValue_V2: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V2
    public typealias PreviousInstance = PortValue_V1.PortValue
    public typealias LayerDimension = LayerDimension_V2.LayerDimension
    public typealias Plane = Plane_V2.Plane
    public typealias NetworkRequestType = NetworkRequestType_V2.NetworkRequestType
    public typealias LayerSize = LayerSize_V2.LayerSize
    public typealias Point3D = Point3D_V2.Point3D
    public typealias Point4D = Point4D_V2.Point4D
    public typealias AsyncMediaValue = AsyncMediaValue_V2.AsyncMediaValue
    public typealias StitchJSON = StitchJSON_V2.StitchJSON
    public typealias Anchoring = Anchoring_V2.Anchoring
    public typealias CameraDirection = CameraDirection_V2.CameraDirection
    public typealias ScrollMode = ScrollMode_V2.ScrollMode
//    public typealias TextAlignment = LayerTextAlignment_V2.LayerTextAlignment
    //    public typealias TextVerticalAlignment = LayerTextVerticalAlignment_V1.LayerTextVerticalAlignment
    
    public typealias VisualMediaFitStyle = VisualMediaFitStyle_V2.VisualMediaFitStyle
    public typealias ClassicAnimationCurve = ClassicAnimationCurve_V2.ClassicAnimationCurve
    public typealias LightType = LightType_V2.LightType
    public typealias LayerStroke = LayerStroke_V2.LayerStroke
    public typealias DateAndTimeFormat = DateAndTimeFormat_V2.DateAndTimeFormat
    public typealias CustomShape = CustomShape_V2.CustomShape
    public typealias ScrollJumpStyle = ScrollJumpStyle_V2.ScrollJumpStyle
    public typealias ScrollDecelerationRate = ScrollDecelerationRate_V2.ScrollDecelerationRate
    public typealias PortValueComparable = PortValueComparable_V2.PortValueComparable
    public typealias DelayStyle = DelayStyle_V2.DelayStyle
    public typealias ShapeCoordinates = ShapeCoordinates_V2.ShapeCoordinates
    public typealias ShapeCommandType = ShapeCommandType_V2.ShapeCommandType
    public typealias ShapeCommand = ShapeCommand_V1.ShapeCommand
    public typealias StitchOrientation = StitchOrientation_V2.StitchOrientation
    public typealias StitchCameraOrientation = StitchCameraOrientation_V2.StitchCameraOrientation
    public typealias StitchDeviceOrientation = StitchDeviceOrientation_V2.StitchDeviceOrientation

    // MARK: - end
    
    public enum PortValue: Codable, Equatable {
        case string(String)
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
    }
}

extension PortValue_V2.PortValue: StitchVersionedCodable {
    public init(previousInstance: PortValue_V2.PreviousInstance) {
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
            self = .layerDimension(PortValue_V2.LayerDimension(previousInstance: value))
        case .matrixTransform(let value):
            self = .matrixTransform(value)
        case .plane(let value):
            self = .plane(PortValue_V2.Plane(previousInstance: value))
        case .networkRequestType(let value):
            self = .networkRequestType(PortValue_V2.NetworkRequestType(previousInstance: value))
        case .color(let value):
            self = .color(value)
        case .size(let value):
            self = .size(PortValue_V2.LayerSize(previousInstance: value))
        case .position(let value):
            self = .position(value)
        case .point3D(let value):
            self = .point3D(PortValue_V2.Point3D(previousInstance: value))
        case .point4D(let value):
            self = .point4D(PortValue_V2.Point4D(previousInstance: value))
        case .pulse(let value):
            self = .pulse(value)
        case .asyncMedia(let value):
            self = .asyncMedia(PortValue_V2.AsyncMediaValue(previousInstance: value))
        case .json(let value):
            self = .json(PortValue_V2.StitchJSON(previousInstance: value))
        case .anchoring(let value):
            self = .anchoring(PortValue_V2.Anchoring(previousInstance: value))
        case .cameraDirection(let value):
            self = .cameraDirection(PortValue_V2.CameraDirection(previousInstance: value))
        case .assignedLayer(let value):
            self = .assignedLayer(value)
        case .scrollMode(let value):
            self = .scrollMode(PortValue_V2.ScrollMode(previousInstance: value))
        case .textAlignment(let value):
            self = .textAlignment(value)
        case .textVerticalAlignment(let value):
            self = .textVerticalAlignment(value)
        case .fitStyle(let value):
            self = .fitStyle(PortValue_V2.VisualMediaFitStyle(previousInstance: value))
        case .animationCurve(let value):
            self = .animationCurve(PortValue_V2.ClassicAnimationCurve(previousInstance: value))
        case .lightType(let value):
            self = .lightType(PortValue_V2.LightType(previousInstance: value))
        case .layerStroke(let value):
            self = .layerStroke(PortValue_V2.LayerStroke(previousInstance: value))
        case .textTransform(let value):
            self = .textTransform(value)
        case .dateAndTimeFormat(let value):
            self = .dateAndTimeFormat(PortValue_V2.DateAndTimeFormat(previousInstance: value))
        case .shape(let value):
            self = .shape(PortValue_V2.CustomShape(previousInstance: value))
        case .scrollJumpStyle(let value):
            self = .scrollJumpStyle(PortValue_V2.ScrollJumpStyle(previousInstance: value))
        case .scrollDecelerationRate(let value):
            self = .scrollDecelerationRate(PortValue_V2.ScrollDecelerationRate(previousInstance: value))
        case .comparable(let value):
            self = .comparable(PortValue_V2.PortValueComparable(previousInstance: value))
        case .delayStyle(let value):
            self = .delayStyle(PortValue_V2.DelayStyle(previousInstance: value))
        case .shapeCoordinates(let value):
            self = .shapeCoordinates(PortValue_V2.ShapeCoordinates(previousInstance: value))
        case .shapeCommandType(let value):
            self = .shapeCommandType(PortValue_V2.ShapeCommandType(previousInstance: value))
        case .shapeCommand(let value):
            self = .shapeCommand(value)
        case .orientation(let value):
            self = .orientation(PortValue_V2.StitchOrientation(previousInstance: value))
        case .cameraOrientation(let value):
            self = .cameraOrientation(PortValue_V2.StitchCameraOrientation(previousInstance: value))
        case .deviceOrientation(let value):
            self = .deviceOrientation(PortValue_V2.StitchDeviceOrientation(previousInstance: value))
        case .vnImageCropOption(let value):
            self = .vnImageCropOption(value)
        case .none:
            self = .none
        }
    }
}
