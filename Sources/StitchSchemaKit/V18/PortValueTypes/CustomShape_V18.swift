//
//  CustomShape_V18.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation


public enum CustomShape_V18: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V18
    public typealias PreviousInstance = CustomShape_V17.CustomShape
    // MARK: - endif
 
    public struct CustomShape: Equatable, Codable {
        /// Custom decoder enables us to only decode essential, non-cached values.
        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let shapes = try container.decode(ShapeDataArray.self, forKey: .shapes)
            self.init(shapes: shapes)
        }
        
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
}

extension CustomShape_V18.CustomShape: StitchVersionedCodable {
    public init(previousInstance: CustomShape_V18.PreviousInstance) {
        self.init(shapes: previousInstance.shapes)
    }
}
