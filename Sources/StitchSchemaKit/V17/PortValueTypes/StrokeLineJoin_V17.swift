//
//  File.swift
//
//
//  Created by Christian J Clampitt on 4/24/24.
//

import Foundation

public enum StrokeLineJoin_V17: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V17
    public typealias PreviousInstance = StrokeLineJoin_V16.StrokeLineJoin
    // MARK: - endif
     
    public enum StrokeLineJoin: String, Hashable, Equatable, Codable, CaseIterable {
        case bevel = "Bevel",
             miter = "Miter",
             round = "Round"
    }
}

extension StrokeLineJoin_V17.StrokeLineJoin: StitchVersionedCodable {
    public init(previousInstance: StrokeLineJoin_V17.PreviousInstance) {
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
