//
//  File.swift
//
//
//  Created by Christian J Clampitt on 4/24/24.
//

import Foundation

public enum StrokeLineJoin_V16: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V16
    public typealias PreviousInstance = StrokeLineJoin_V15.StrokeLineJoin
    // MARK: - endif
     
    public enum StrokeLineJoin: String, Hashable, Equatable, Codable, CaseIterable {
        case bevel = "Bevel",
             miter = "Miter",
             round = "Round"
    }
}

extension StrokeLineJoin_V16.StrokeLineJoin: StitchVersionedCodable {
    public init(previousInstance: StrokeLineJoin_V16.PreviousInstance) {
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
