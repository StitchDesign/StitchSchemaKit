//
//  ShapeCommandType_V1.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum ShapeCommandType_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.ShapeCommandType
    // MARK: - endif
 
    public enum ShapeCommandType: String, Equatable, Hashable, Codable, CaseIterable {
        case closePath, lineTo, moveTo, curveTo
    }

}

extension ShapeCommandType_V1.ShapeCommandType: StitchVersionedCodable {
    public init(previousInstance: ShapeCommandType_V1.PreviousInstance) {
        fatalError()
    }
}
