//
//  ShapeCommandType_V27.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum ShapeCommandType_V27: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V27
    public typealias PreviousInstance = ShapeCommandType_V26.ShapeCommandType
    // MARK: - endif
 
    public enum ShapeCommandType: String, Equatable, Hashable, CaseIterable {
        case closePath, lineTo, moveTo, curveTo
    }

}

extension ShapeCommandType_V27.ShapeCommandType: StitchVersionedCodable {
    public init(previousInstance: ShapeCommandType_V27.PreviousInstance) {
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
