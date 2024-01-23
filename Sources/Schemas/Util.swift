//
//  Util.swift
//
//
//  Created by Elliot Boschwitz on 1/22/24.
//

import Foundation
import SwiftUI
import Vision
import simd

typealias CGPoints = [CGPoint]

// Given a series of points, eg composing a triangle or pentagon,
// we can determine the resulting bounding box that contains the points.
// Similar to the `CGRect` in SwiftUI Shape protocol's `path(in rect: CGRect)`.
extension CGPoints {
    var boundingBoxWidth: CGFloat {
        let min = self.min { x1, x2 in
            x1.x < x2.x
        }
        let max = self.max { x1, x2 in
            x1.x < x2.x
        }
        return (max?.x ?? .zero) - (min?.x ?? .zero)
    }

    var boundingBoxHeight: CGFloat {
        let min = self.min { y1, y2 in
            y1.y < y2.y
        }
        let max = self.max { y1, y2 in
            y1.y < y2.y
        }
        return (max?.y ?? .zero) - (min?.y ?? .zero)
    }

    var mostNegativeY: CGFloat {
        self.min { k1, k2 in k1.y < k2.y }?.y ?? .zero
    }

    var mostNegativeX: CGFloat {
        self.min { k1, k2 in k1.x < k2.x }?.x ?? .zero
    }

    // added:
    var mostPostiveY: CGFloat {
        self.max { k1, k2 in k1.y < k2.y }?.y ?? .zero
    }

    var mostPostiveX: CGFloat {
        self.max { k1, k2 in k1.x < k2.x }?.x ?? .zero
    }
}


extension CGRect {
    func yBound(_ baseOriginY: CGFloat,
                _ baseHeight: CGFloat,
                isNorth: Bool = false) -> CGFloat {

        // now needs to just be north vs south EDGE
        let origin = self.origin.y
        let height = abs(self.height)

        // If finding north edge,
        // then must substract.
        if isNorth {
            return origin - height/2
        } else {
            return origin + height/2
        }
    }

    func xBound(_ baseOriginX: CGFloat,
                _ baseWidth: CGFloat,
                isWest: Bool = false) -> CGFloat {

        // now needs to just be west vs east EDGE
        let origin = self.origin.x
        let width = abs(self.width)

        // If finding west edge,
        // then must substract.
        if isWest {
            return origin - width/2
        } else {
            return origin + width/2
        }
    }
}

extension CGSize {
    var area: CGFloat {
        abs(self.width) * abs(self.height)
    }
}

extension StitchDocument {
    var id: String { self.projectId.id }
}

extension Color: Codable {
    enum CodingKeys: String, CodingKey {
        case red, green, blue, alpha
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let r = try container.decode(Double.self, forKey: .red)
        let g = try container.decode(Double.self, forKey: .green)
        let b = try container.decode(Double.self, forKey: .blue)

        // Added
        let a = (try? container.decode(Double.self, forKey: .alpha)) ?? 1.0

        self.init(red: r, green: g, blue: b, alpha: a)
    }

    public func encode(to encoder: Encoder) throws {
        guard let colorComponents = self.colorComponents else {
            return
        }

        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(colorComponents.red, forKey: .red)
        try container.encode(colorComponents.green, forKey: .green)
        try container.encode(colorComponents.blue, forKey: .blue)
        try container.encode(colorComponents.alpha, forKey: .alpha)
    }
}

extension Color {
#if os(macOS)
typealias SystemColor = NSColor
#else
typealias SystemColor = UIColor
#endif
    
    init(red: CGFloat,
         green: CGFloat,
         blue: CGFloat,
         alpha: CGFloat) {

        let rgba = RGBA(red: red,
                    green: green,
                    blue: blue,
                    alpha: alpha)
        
        let uiColor = UIColor(red: rgba.red,
                              green: rgba.green,
                              blue: rgba.blue,
                              alpha: rgba.alpha)
        
        self = Color(uiColor: uiColor)
    }
    
    var colorComponents: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)? {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0

        #if os(macOS)
        SystemColor(self).getRed(&r, green: &g, blue: &b, alpha: &a)
        // Note that non RGB color will raise an exception, that I don't now how to catch because it is an Objc exception.
        #else
        guard SystemColor(self).getRed(&r, green: &g, blue: &b, alpha: &a) else {
            // Pay attention that the color should be convertible into RGB format
            // Colors using hue, saturation and brightness won't work
            return nil
        }
        #endif

        return (r, g, b, a)
    }
}

extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

extension matrix_float4x4: Codable {
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        try self.init(container.decode([SIMD4<Float>].self))
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode([columns.0, columns.1, columns.2, columns.3])
    }
}

extension VNImageCropAndScaleOption: Codable { }
