//
//  File.swift
//
//
//  Created by Christian J Clampitt on 4/24/24.
//

import Foundation

public enum StrokeLineJoin_V18: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V18
    public typealias PreviousInstance = StrokeLineJoin_V17.StrokeLineJoin
    // MARK: - endif
     
    public enum StrokeLineJoin: String, Hashable, Equatable, Codable, CaseIterable {
        case bevel = "Bevel",
             miter = "Miter",
             round = "Round"
    }
}

extension StrokeLineJoin_V18.StrokeLineJoin: StitchVersionedCodable {
    public init(previousInstance: StrokeLineJoin_V18.PreviousInstance) {
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
