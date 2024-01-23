//
//  Util.swift
//
//
//  Created by Elliot Boschwitz on 1/22/24.
//

import Foundation


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
