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

public enum DataType<Value: Equatable & Codable & Hashable>: Codable, Hashable {
    case source(Value)
    case computed
}

public struct StitchJSON: Codable, Equatable, Hashable {
    public static func == (lhs: StitchJSON, rhs: StitchJSON) -> Bool {
        lhs.id == rhs.id
    }
    
    public var id: UUID
    public var value: JSON {
        didSet {
            self.id = .init()
        }
    }
    
    public init(id: UUID, value: JSON) {
        self.id = id
        self.value = value
    }
    
    
    public init(_ value: JSON) {
        self.id = .init()
        self.value = value
    }
}


