//
//  ShapeCommandType_V6.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum ShapeCommandType_V6: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V6
    public typealias PreviousInstance = ShapeCommandType_V5.ShapeCommandType
    // MARK: - endif
 
    public enum ShapeCommandType: String, Equatable, Hashable, CaseIterable {
        case closePath, lineTo, moveTo, curveTo
    }

}

extension ShapeCommandType_V6.ShapeCommandType: StitchVersionedCodable {
    public init(previousInstance: ShapeCommandType_V6.PreviousInstance) {
        switch previousInstance {
            
        case .closePath:
            self = .closePath
        case .lineTo:
            self = .lineTo
        case .moveTo:
            self = .moveTo
        case .curveTo:
            self = .curveTo
        }
    }
}
