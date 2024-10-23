//
//  StrokeLineCap_V27.swift
//  
//
//  Created by Christian J Clampitt on 4/24/24.
//

import Foundation

public enum StrokeLineCap_V27: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V27
    public typealias PreviousInstance = StrokeLineCap_V26.StrokeLineCap
    // MARK: - endif
     
    public enum StrokeLineCap: String, Hashable, Equatable, Codable, CaseIterable {
        case butt = "Butt",
             square = "Square",
             round = "Round"
    }
}

extension StrokeLineCap_V27.StrokeLineCap: StitchVersionedCodable {
    public init(previousInstance: StrokeLineCap_V27.PreviousInstance) {
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
