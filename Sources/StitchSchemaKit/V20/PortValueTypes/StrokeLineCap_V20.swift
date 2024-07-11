//
//  StrokeLineCap_V20.swift
//  
//
//  Created by Christian J Clampitt on 4/24/24.
//

import Foundation

public enum StrokeLineCap_V20: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V20
    public typealias PreviousInstance = StrokeLineCap_V19.StrokeLineCap
    // MARK: - endif
     
    public enum StrokeLineCap: String, Hashable, Equatable, Codable, CaseIterable {
        case butt = "Butt",
             square = "Square",
             round = "Round"
    }
}

extension StrokeLineCap_V20.StrokeLineCap: StitchVersionedCodable {
    public init(previousInstance: StrokeLineCap_V20.PreviousInstance) {
        switch previousInstance {
        case .butt:
            self = .butt
        case .square:
            self = .square
        case .round:
            self = .round
        }
    }
}
