//
//  StrokeLineCap_V14.swift
//  
//
//  Created by Christian J Clampitt on 4/24/24.
//

import Foundation

public enum StrokeLineCap_V14: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V14
    public typealias PreviousInstance = StrokeLineCap_V13.StrokeLineCap
    // MARK: - endif
     
    public enum StrokeLineCap: String, Hashable, Equatable, Codable, CaseIterable {
        case butt = "Butt",
             square = "Square",
             round = "Round"
    }
}

extension StrokeLineCap_V14.StrokeLineCap: StitchVersionedCodable {
    public init(previousInstance: StrokeLineCap_V14.PreviousInstance) {
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
