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

// the values contained in a single Input or Output
public typealias PortValues = [PortValue]

public enum PortValue: Codable {
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

public enum LayerDimension: Codable {
    case number(CGFloat),
         // visual media layer: resource's inherent dimnensions
         // non-media layer: 100% of parent's dimension
         auto,
         // parentPercent(100), // use 100% of parent dimenion
         // parentPercent(50) // use 50% of parent dimension
         parentPercent(Double)
}

public typealias StitchMatrix = matrix_float4x4

public enum Plane: String, CaseIterable, Codable {
    case any, horizontal, vertical
}

public enum NetworkRequestType: String, CaseIterable, Codable {
    case get, post // put
}

public struct LayerSize: Codable {
    public var width: LayerDimension
    public var height: LayerDimension
    
    public init(width: LayerDimension, height: LayerDimension) {
        self.width = width
        self.height = height
    }
    
    public init(width: CGFloat, height: CGFloat) {
        self.width = .number(width)
        self.height = .number(height)
    }
}

public typealias StitchPosition = CGSize

public struct Point3D: Codable {
    public var x: Double
    public var y: Double
    public var z: Double
}

public struct Point4D: Codable {
    public var x: Double
    public var y: Double
    public var z: Double
    public var w: Double
}

public struct AsyncMediaValue: Codable {
    public var id: MediaObjectId
    public var dataType: DataType<MediaKey>
}

public struct MediaKey: Codable, Hashable {
    public let filename: String // eg. `dogs`
    public let fileExtension: String // eg `.avi`
}

/// Combines a UUID with some NodeId to assign unique media objects to each node.
/// This ensures 1:1 mapping between media and nodes.
public struct MediaObjectId: Codable {
    // An ID that's associated with the original media
    public var globalId: UUID
    
    // Properties specific to the media's location in the node
    public var nodeId: NodeId
    public var loopIndex: Int
}

public enum DataType<Value: Equatable & Codable & Hashable>: Codable, Hashable {
    case source(Value)
    case computed
}

public struct StitchJSON: Codable {
    public var id: UUID
    public var value: JSON {
        didSet {
            self.id = .init()
        }
    }
}

public enum Anchoring: String, Codable, CaseIterable {
    case topLeft, topCenter, topRight,
         centerLeft, center, centerRight,
         bottomLeft, bottomCenter, bottomRight
}

// e.g. AVCaptureDevice.Position.front
public enum CameraDirection: String, CaseIterable, Codable {
    case front, back
}

// a wrapper-type over NodeId, to use in more specific situations
public struct LayerNodeId: Codable, Hashable {
    public let id: NodeId
    
    public init(_ id: UUID) {
        self.id = id
    }
}

public enum ScrollMode: String, Codable, CaseIterable {
    case free
    case paging
    case disabled
}

public enum LayerTextAlignment: String, Codable, CaseIterable {
    case left, center, right, justify
}

// Vertical alignment options for our Text Layers in preview window
public enum LayerTextVerticalAligment: String, Codable, CaseIterable {
    case top, center, bottom
}

public enum VisualMediaFitStyle: String, CaseIterable, Codable {
    case fit, fill, stretch
}

public enum ClassicAnimationCurve: String, Codable, CaseIterable {
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

public enum LightType: String, Codable, CaseIterable {
    case ambient, omni, directional,
         spot, IES, probe, area
}

public enum LayerStroke: String, Codable, CaseIterable {
    case none, inside, outside
}

public enum TextTransform: String, Codable, CaseIterable {
    case uppercase, lowercase, capitalize
}

public enum DateAndTimeFormat: String, CaseIterable, Codable {
    case none, short, medium, long, full
}

public typealias ShapeDataArray = [ShapeAndRect]

public struct CustomShape {
    public var shapes: ShapeDataArray {
        didSet {
            self.setCachedValues()
        }
    }
    
    public var baseFrame: CGRect { self._baseFrame }
    public var west: CGFloat { self._west }
    public var east: CGFloat { self._east }
    public var north: CGFloat { self._north }
    public var south: CGFloat { self._south }
    
    private var _baseFrame: CGRect = .zero
    private var _west: CGFloat = .zero
    private var _east: CGFloat = .zero
    private var _north: CGFloat = .zero
    private var _south: CGFloat = .zero
    
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

extension CustomShape: Codable {
    /// Custom decoder enables us to only decode essential, non-cached values.
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let shapes = try container.decode(ShapeDataArray.self, forKey: .shapes)
        self.init(shapes: shapes)
    }
}

public enum ShapeAndRect: Codable {
    case oval(CGRect),
         circle(CGRect),
         rectangle(RoundedRectangleData),
         triangle(TriangleData),
         // more like "path", since was created from a path json
         custom(JSONShapeCommands)
}

public struct RoundedRectangleData: Equatable, Codable {
    public var rect: CGRect
    public var cornerRadius: CGFloat
}

public struct TriangleData: Codable {
    var points: [CGPoint] {
        [p1, p2, p3]
    }
    
    // A triangle is made up of three points:
    public let p1: CGPoint
    public let p2: CGPoint
    public let p3: CGPoint
}

public typealias JSONShapeCommands = [JSONShapeCommand]

// NOTE: The points inside have already been multiplied
// by the JsonToShape node's coordinate-space input.

// TODO: other Shapes like `RoundedRectangle` and `Oval` can be described via JSONShapeCommands too

// TODO: migrate e.g. `JSONShapeCommand.moveTo(CGPoint)` etc. to  `JSONShapeCommand.moveTo(JSONMoveTo)`
public enum JSONShapeCommand: Codable {
    case closePath
    case moveTo(CGPoint)
    case lineTo(CGPoint)
    case curveTo(JSONCurveTo)
}

public struct JSONCurveTo: Codable {
    public let point: CGPoint

    // i.e. JSON's `curveFrom`
    public let controlPoint1: CGPoint

    // i.e. JSON's `curveTo`
    public let controlPoint2: CGPoint
}

public enum ScrollJumpStyle: String, Codable, CaseIterable {
    case animated
    case instant
}

public enum ScrollDecelerationRate: String, Codable, CaseIterable {
    case normal
    case fast
}

public enum PortValueComparable: Equatable, Codable, Hashable {
    case number(Double)
    case bool(Bool)
    case string(String)
}

public enum DelayStyle: String, Codable, Equatable {
    case always = "Always"
    case increasing = "Increasing"
    case decreasing = "Decreasing"
}

public enum ShapeCoordinates: String, Codable, Equatable {
    case relative = "Relative"
    case absolute = "Absolute"
}

public enum ShapeCommandType: String, Codable, CaseIterable {
    case closePath, lineTo, moveTo, curveTo
}

public enum ShapeCommand {
    case closePath,
         lineTo(point: PathPoint),
         moveTo(point: PathPoint),
         curveTo(curveFrom: PathPoint,
                 point: PathPoint,
                 curveTo: PathPoint)
}

extension ShapeCommand: Codable {
    enum CodingKeys: String, CodingKey {
        case type, point,
             // added for curveTo case
             curveFrom, curveTo
    }

    enum CommandType: String, Decodable {
        case closePath, lineTo, moveTo, curveTo
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        // the `type` key, whether it's "lineTo" or "moveTo"
        let type = try container.decode(CommandType.self, forKey: .type)

        switch type {

        case .closePath:
            self = .closePath

        case .lineTo:
            let point = try container.decode(PathPoint.self, forKey: .point)
            self = .lineTo(point: point)

        case .moveTo:
            let point = try container.decode(PathPoint.self, forKey: .point)
            self = .moveTo(point: point)

        case .curveTo:
            let point = try container.decode(PathPoint.self, forKey: .point)
            // .curveTo case means we have type, point AND curveFrom, and curveTo keys
            let curveFrom: PathPoint = try container.decode(PathPoint.self, forKey: .curveFrom)
            let curveTo: PathPoint = try container.decode(PathPoint.self, forKey: .curveTo)

            self = .curveTo(curveFrom: curveFrom,
                            point: point,
                            curveTo: curveTo)
        }

    }

    // Note: we encode a key-value pair (e.g. "type: moveTo")
    // which we don't actually use in the enum.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        switch self {
        case .closePath:
            try container.encode(JSONShapeKeys.CLOSE_PATH, forKey: .type)
        case .moveTo(let point):
            try container.encode(JSONShapeKeys.MOVE_TO, forKey: .type)
            try container.encode(point, forKey: .point)
        case .lineTo(let point):
            try container.encode(JSONShapeKeys.LINE_TO, forKey: .type)
            try container.encode(point, forKey: .point)
        case .curveTo(let curveFrom, let point, let curveTo):
            try container.encode(JSONShapeKeys.CURVE_TO, forKey: .type)
            try container.encode(point, forKey: .point)
            try container.encode(curveFrom, forKey: .curveFrom)
            try container.encode(curveTo, forKey: .curveTo)
        }
    }
}

public struct JSONShapeKeys {
    static let PATH = "path"
    static let TYPE = "type"

    static let POINT = "point"

    static let CLOSE_PATH = "closePath"
    static let MOVE_TO = "moveTo"
    static let LINE_TO = "lineTo"
    static let CURVE_TO = "curveTo"

    static let CURVE_FROM = "curveFrom"
}

// Needed so that we can encode CGPoint in the "{ x: 1, y: 2 }" format expected by path json arrays and shape commands
public struct PathPoint: Codable {
    public let x: CGFloat
    public let y: CGFloat
}

// Used for VStack vs HStack on layer groups
public enum StitchOrientation: String, Codable, CaseIterable {
    case none, horizontal, vertical
}

public struct CameraSettings: Codable, Equatable, Hashable {
    public var direction: CameraDirection = .front
    public var orientation: StitchCameraOrientation
}

public enum StitchCameraOrientation: String, Codable, Equatable, Hashable, CaseIterable {
    case portrait = "Portrait",
         portraitUpsideDown = "Portrait Upside-Down",
         landscapeLeft = "Landscape Left",
         landscapeRight = "Landscape Right"
}

public enum StitchDeviceOrientation: String, Codable, CaseIterable {
    case unknown = "Unknown",
         portrait = "Portrait",
         portraitUpsideDown = "Portrait Upside-Down",
         landscapeLeft = "Landscape Left",
         landscapeRight = "Landscape Right",
         faceUp = "Face Up",
         faceDown = "Face Down"
}

public struct RGBA: Codable {
    let red: CGFloat
    let green: CGFloat
    let blue: CGFloat
    let alpha: CGFloat
}
