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
    public typealias TextAlignment = LayerTextAlignment_V2.LayerTextAlignment

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
            self = .fitStyle(value)
        case .animationCurve(let value):
            self = .animationCurve(value)
        case .lightType(let value):
            self = .lightType(value)
        case .layerStroke(let value):
            self = .layerStroke(value)
        case .textTransform(let value):
            self = .textTransform(value)
        case .dateAndTimeFormat(let value):
            self = .dateAndTimeFormat(value)
        case .shape(let value):
            self = .shape(value)
        case .scrollJumpStyle(let value):
            self = .scrollJumpStyle(value)
        case .scrollDecelerationRate(let value):
            self = .scrollDecelerationRate(value)
        case .comparable(let value):
            self = .comparable(value)
        case .delayStyle(let value):
            self = .delayStyle(value)
        case .shapeCoordinates(let value):
            self = .shapeCoordinates(value)
        case .shapeCommandType(let value):
            self = .shapeCommandType(value)
        case .shapeCommand(let value):
            self = .shapeCommand(value)
        case .orientation(let value):
            self = .orientation(value)
        case .cameraOrientation(let value):
            self = .cameraOrientation(value)
        case .deviceOrientation(let value):
            self = .deviceOrientation(value)
        case .vnImageCropOption(let value):
            self = .vnImageCropOption(value)
        case .none:
            self = .none
        }
    }
}
