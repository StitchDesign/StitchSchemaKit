//
//  PathPoint_V23.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum PathPoint_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V23
    
    // TODO: fix after version 23
    public typealias PreviousInstance = PathPoint_V1.PathPoint
    // MARK: - endif

    // Needed so that we can encode CGPoint in the "{ x: 1, y: 2 }" format expected by path json arrays and shape commands
    public struct PathPoint: Equatable, Hashable {
        public let x: CGFloat
        public let y: CGFloat
        
        public init(x: CGFloat, y: CGFloat) {
            self.x = x
            self.y = y
        }
    }
}

extension PathPoint_V23.PathPoint: StitchVersionedCodable {
    public init(previousInstance: PathPoint_V23.PreviousInstance) {
        self.init(x: previousInstance.x, y: previousInstance.y)
    }
}
