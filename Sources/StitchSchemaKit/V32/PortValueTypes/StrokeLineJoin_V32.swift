//
//  File.swift
//
//
//  Created by Christian J Clampitt on 4/24/24.
//

import Foundation

public enum StrokeLineJoin_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = StrokeLineJoin_V31.StrokeLineJoin
    // MARK: - endif
     
    public enum StrokeLineJoin: String, Hashable, Equatable, Codable, CaseIterable {
        case bevel = "Bevel",
             miter = "Miter",
             round = "Round"
    }
}

extension StrokeLineJoin_V32.StrokeLineJoin: StitchVersionedCodable {
    public init(previousInstance: StrokeLineJoin_V32.PreviousInstance) {
        switch previousInstance {
        case .bevel:
            self = .bevel
        case .miter:
            self = .miter
        case .round:
            self = .round
        }
    }
}
