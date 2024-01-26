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

public enum LayerDimension: Codable, Equatable {
    case number(CGFloat),
         // visual media layer: resource's inherent dimnensions
         // non-media layer: 100% of parent's dimension
         auto,
         // parentPercent(100), // use 100% of parent dimenion
         // parentPercent(50) // use 50% of parent dimension
         parentPercent(Double)
}

public struct AsyncMediaValue: Codable, Equatable, Hashable {
    public var id: MediaObjectId
    public var dataType: DataType<MediaKey>
    
    public init(id: MediaObjectId, dataType: DataType<MediaKey>) {
        self.id = id
        self.dataType = dataType
    }
    
    /// Optional initializer with NodeId and MediaKey.
    public init(nodeId: NodeId,
         loopIndex: Int,
         mediaKey: MediaKey) {
        self.id = MediaObjectId(nodeId: nodeId, loopIndex: loopIndex)
        self.dataType = .source(mediaKey)
    }
    
    /// Optional initializer for computed type.
    public init(nodeId: NodeId, loopIndex: Int) {
        self.id = MediaObjectId(nodeId: nodeId, loopIndex: loopIndex)
        self.dataType = .computed
    }
    
    /// Optional initializer for default media, where loopIndex is always 0 but we need the static global id.
    public init(globalId: UUID, nodeId: NodeId, mediaKey: MediaKey) {
        self.id = .init(globalId: globalId, nodeId: nodeId, loopIndex: 0)
        self.dataType = .source(mediaKey)
    }
}

/// Combines a UUID with some NodeId to assign unique media objects to each node.
/// This ensures 1:1 mapping between media and nodes.
public struct MediaObjectId: Codable, Equatable, Hashable {
    // An ID that's associated with the original media
    public var globalId: UUID
    
    // Properties specific to the media's location in the node
    public var nodeId: NodeId
    public var loopIndex: Int
    
    public init(globalId: UUID = UUID(),
                nodeId: NodeId,
                loopIndex: Int) {
        self.globalId = globalId
        self.nodeId = nodeId
        self.loopIndex = loopIndex
    }
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

// a wrapper-type over NodeId, to use in more specific situations
public struct LayerNodeId: Codable, Hashable {
    public let id: NodeId
    
    public init(_ id: UUID) {
        self.id = id
    }
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

public struct CustomShape: Equatable {
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
    
    public init(shapes: ShapeDataArray) {
        self.shapes = shapes
        self.setCachedValues()
    }
    
    public init(_ shape: ShapeAndRect) {
        self.init(shapes: [shape])
    }
    
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

public struct JSONCurveTo: Codable, Equatable, Hashable {
    public let point: CGPoint

    // i.e. JSON's `curveFrom`
    public let controlPoint1: CGPoint

    // i.e. JSON's `curveTo`
    public let controlPoint2: CGPoint
    
    public init(point: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint) {
        self.point = point
        self.controlPoint1 = controlPoint1
        self.controlPoint2 = controlPoint2
    }
}



public enum ShapeCommand: Equatable, Hashable {
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
