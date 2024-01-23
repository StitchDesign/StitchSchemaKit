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

struct MediaKey: Equatable, Codable, Hashable {
    let filename: String // eg. `dogs`
    let fileExtension: String // eg `.avi`
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

struct StitchJSON: Codable {
    var id: UUID
    var value: JSON {
        didSet {
            self.id = .init()
        }
    }
}

enum Anchoring: String, Equatable, Codable, Hashable, CaseIterable{
    case topLeft, topCenter, topRight,
         centerLeft, center, centerRight,
         bottomLeft, bottomCenter, bottomRight
}

// e.g. AVCaptureDevice.Position.front
enum CameraDirection: String, CaseIterable, Equatable, Codable {
    case front, back
}

// a wrapper-type over NodeId, to use in more specific situations
struct LayerNodeId: Equatable, Codable, Hashable, Identifiable {
    let id: NodeId
}

enum ScrollMode: String, Codable, Equatable, CaseIterable {
    case free
    case paging
    case disabled
}

enum LayerTextAlignment: String, Equatable, Codable, CaseIterable {
    case left, center, right, justify
}

// Vertical alignment options for our Text Layers in preview window
enum LayerTextVerticalAligment: String, Equatable, Codable, CaseIterable {
    case top, center, bottom
}

enum VisualMediaFitStyle: String, CaseIterable, Equatable, Codable {
    case fit, fill, stretch
}

enum ClassicAnimationCurve: String, Codable, Equatable, CaseIterable {
    case linear,
         
         // quadratic
         quadraticIn,
         quadraticOut,
         quadraticInOut,
         
         // sine
         sinusoidalIn,
         sinusoidalOut,
         sinusoidalInOut,
         
         // exponent
         exponentialIn,
         exponentialOut,
         exponentialInOut
}

enum LightType: String, Equatable, Codable, Hashable, CaseIterable {
    case ambient, omni, directional,
         spot, IES, probe, area
}

enum LayerStroke: String, Equatable, Codable, Hashable, CaseIterable {
    case none, inside, outside
}

enum TextTransform: String, Equatable, Codable, Hashable, CaseIterable {
    case uppercase, lowercase, capitalize
}

enum DateAndTimeFormat: String, Equatable, Hashable, CaseIterable, Codable {
    case none, short, medium, long, full
}

typealias ShapeDataArray = [ShapeAndRect]

struct CustomShape {
    var shapes: ShapeDataArray {
        didSet {
            self.setCachedValues()
        }
    }
    
    var baseFrame: CGRect { self._baseFrame }
    var west: CGFloat { self._west }
    var east: CGFloat { self._east }
    var north: CGFloat { self._north }
    var south: CGFloat { self._south }
    
    private var _baseFrame: CGRect = .zero
    private var _west: CGFloat = .zero
    private var _east: CGFloat = .zero
    private var _north: CGFloat = .zero
    private var _south: CGFloat = .zero
}

extension CustomShape {
    mutating func setCachedValues() {
        let baseFrame = self.getBaseFrame()

        self._baseFrame = baseFrame
        self._west = maxWest(baseFrame)
        self._east = maxEast(baseFrame)
        self._north = maxNorth(baseFrame)
        self._south = maxSouth(baseFrame)
    }
    
    // The smallest shape
    // NOTE: it's a bit strange why we're forced to use this; something about SwiftUI's Path API and adding to more ; we use the s
    private func getBaseFrame() -> CGRect {
        self.shapes.min {
            $0.rect.size.area < $1.rect.size.area
        }?.rect ?? self.shapes.first?.rect ?? .zero
    }
    
    private func maxNorth(_ smallestShape: CGRect) -> CGFloat {
        self.shapes.map { $0.north(smallestShape) }
            .min { $0 < $1 } ?? .zero
    }

    private func maxSouth(_ smallestShape: CGRect) -> CGFloat {
        self.shapes.map { $0.south(smallestShape) }
            .max { $0 < $1 } ?? .zero
    }

    private func maxWest(_ smallestShape: CGRect) -> CGFloat {
        self.shapes.map { $0.west(smallestShape) }
            .min { $0 < $1 } ?? .zero
    }

    private func maxEast(_ smallestShape: CGRect) -> CGFloat {
        self.shapes.map { $0.east(smallestShape) }
            .max { $0 < $1 } ?? .zero
    }
}

enum ShapeAndRect: Codable {
    case oval(CGRect),
         circle(CGRect),
         rectangle(RoundedRectangleData),
         triangle(TriangleData),
         // more like "path", since was created from a path json
         custom(JSONShapeCommands)
}

extension ShapeAndRect {
    var rect: CGRect {
        switch self {
        case .oval(let x):
            return x
        case .circle(let x):
            return x
        case .rectangle(let x):
            return x.rect

        // self.rect not really used in most case
        case .triangle(let trianglePoints):
            // Assuming `.p1` is the proper origin here:
            return .init(
                origin: trianglePoints.p1,
                size: .init(width: abs(trianglePoints.points.boundingBoxWidth),
                            height: abs(trianglePoints.points.boundingBoxHeight)))

        case .custom(let commands):
            return .init(
                // .first not accurate for e.g. the curveTo ?
                // also, this is ALL points for all instructions
                origin: commands.getPoints().first ?? .zero,
                size: .init(width: abs(commands.getPoints().boundingBoxWidth),
                            height: abs(commands.getPoints().boundingBoxHeight)))
        }
    }
    
    // the northern bound for a given shape
    func north(_ smallestShape: CGRect) -> CGFloat {
        switch self {
        case .triangle(let trianglePoints):
            return trianglePoints.points.mostNegativeY
        case .custom(let jsonShapeCommands):
            return jsonShapeCommands.getPoints().mostNegativeY
        case .oval, .circle, .rectangle:
            return self.rect.yBound(smallestShape.origin.y,
                                    smallestShape.height,
                                    isNorth: true)
        }
    }

    func south(_ smallestShape: CGRect) -> CGFloat {
        switch self {
        case .oval, .circle, .rectangle:
            return self.rect.yBound(smallestShape.origin.y,
                                    smallestShape.height)
        case .triangle(let trianglePoints):
            // double check that south logic is correct
            return trianglePoints.points.mostPostiveY
        case .custom(let jsonShapeCommands):
            return jsonShapeCommands.getPoints().mostPostiveY
        }
    }

    func west(_ smallestShape: CGRect) -> CGFloat {
        switch self {
        case .oval, .circle, .rectangle:
            return self.rect.xBound(smallestShape.origin.x,
                                    smallestShape.width,
                                    isWest: true)
        case .triangle(let trianglePoints):
            return trianglePoints.points.mostNegativeX
        case .custom(let jsonShapeCommands):
            return jsonShapeCommands.getPoints().mostNegativeX
        }
    }

    func east(_ smallestShape: CGRect) -> CGFloat {
        switch self {
        case .oval, .circle, .rectangle:
            return self.rect.xBound(smallestShape.origin.x,
                                    smallestShape.width)
        case .triangle(let trianglePoints):
            // double check that east logic is correct
            return trianglePoints.points.mostPostiveX
        case .custom(let jsonShapeCommands):
            return jsonShapeCommands.getPoints().mostPostiveX
        }
    }
}

struct RoundedRectangleData: Equatable, Codable {
    var rect: CGRect
    var cornerRadius: CGFloat
}

struct TriangleData: Equatable, Codable {
    var points: [CGPoint] {
        [p1, p2, p3]
    }
    
    // A triangle is made up of three points:
    let p1: CGPoint
    let p2: CGPoint
    let p3: CGPoint
}

typealias JSONShapeCommands = [JSONShapeCommand]

extension JSONShapeCommands {
    func getPoints() -> [CGPoint] {
        self.map { $0.point }
    }
}

// NOTE: The points inside have already been multiplied
// by the JsonToShape node's coordinate-space input.

// TODO: other Shapes like `RoundedRectangle` and `Oval` can be described via JSONShapeCommands too

// TODO: migrate e.g. `JSONShapeCommand.moveTo(CGPoint)` etc. to  `JSONShapeCommand.moveTo(JSONMoveTo)`
enum JSONShapeCommand: Codable {
    case closePath
    case moveTo(CGPoint)
    case lineTo(CGPoint)
    case curveTo(JSONCurveTo)
}

extension JSONShapeCommand {
    var point: CGPoint {
        switch self {
        // TODO: handle this case properly?
        case .closePath:
            return .zero
        case .moveTo(let cgPoint):
            return cgPoint
        case .lineTo(let cgPoint):
            return cgPoint
        case .curveTo(let jsonCurveTo):
            return jsonCurveTo.point
        }
    }
}

struct JSONCurveTo: Codable {
    let point: CGPoint

    // i.e. JSON's `curveFrom`
    let controlPoint1: CGPoint

    // i.e. JSON's `curveTo`
    let controlPoint2: CGPoint
}
