//
//  File.swift
//  
//
//  Created by Christian J Clampitt on 4/24/24.
//

import Foundation

public enum StrokeLineCap_V13: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V13
    public typealias PreviousInstance = Self.StrokeLineCap
    // MARK: - endif
     
    public enum StrokeLineCap: String, Hashable, Equatable, Codable, CaseIterable {
        case butt = "Butt",
             square = "Square",
             round = "Round"
    }
}

extension StrokeLineCap_V13.StrokeLineCap: StitchVersionedCodable {
    public init(previousInstance: StrokeLineCap_V13.PreviousInstance) {
        fatalError()
    }
}
