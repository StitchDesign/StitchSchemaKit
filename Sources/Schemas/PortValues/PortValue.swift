//
//  PortValue.swift
//
//
//  Created by Elliot Boschwitz on 1/22/24.
//

import Foundation
import SwiftUI
import simd
import SwiftyJSON

// the values contained in a single Input or Output
typealias PortValues = [PortValue]

enum PortValue: Equatable, Codable, Hashable {
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
    case textVerticalAlignment(LayerTextVerticalAligment)
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

enum LayerDimension: Equatable, Codable, Hashable {
    case number(CGFloat),
         // visual media layer: resource's inherent dimnensions
         // non-media layer: 100% of parent's dimension
         auto,
         // parentPercent(100), // use 100% of parent dimenion
         // parentPercent(50) // use 50% of parent dimension
         parentPercent(Double)

    init(_ x: CGFloat) {
        self = .number(x)
    }
}

typealias StitchMatrix = matrix_float4x4

enum Plane: String, CaseIterable, Equatable, Codable {
    case any, horizontal, vertical
}

enum NetworkRequestType: String, CaseIterable, Equatable, Codable {
    case get, post // put
}

struct LayerSize: Equatable, Codable, Hashable {
    var width: LayerDimension
    var height: LayerDimension
}

typealias StitchPosition = CGSize

struct Point3D: Codable, Equatable, Hashable {
    var x: Double
    var y: Double
    var z: Double
}

struct Point4D: Codable, Equatable, Hashable {
    var x: Double
    var y: Double
    var z: Double
    var w: Double
}

struct AsyncMediaValue: Equatable, Codable, Identifiable, Hashable {
    var id: MediaObjectId
    var dataType: DataType<MediaKey>
}


/// Combines a UUID with some NodeId to assign unique media objects to each node.
/// This ensures 1:1 mapping between media and nodes.
struct MediaObjectId: Equatable, Codable, Hashable {
    // An ID that's associated with the original media
    var globalId: UUID
    
    // Properties specific to the media's location in the node
    var nodeId: NodeId
    var loopIndex: Int
}

enum DataType<Value: Equatable & Codable & Hashable>: Equatable, Codable, Hashable {
    case source(Value)
    case computed
}

struct StitchJSON: Equatable, Codable, Hashable {
    var id: UUID
    var value: JSON {
        didSet {
            self.id = .init()
        }
    }
}
