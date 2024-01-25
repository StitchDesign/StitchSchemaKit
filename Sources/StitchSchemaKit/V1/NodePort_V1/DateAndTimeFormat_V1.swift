//
//  DateAndTimeFormat_V1.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum DateAndTimeFormat_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.DateAndTimeFormat
    // MARK: - endif
    
    public enum DateAndTimeFormat: String, CaseIterable, Codable {
        case none, short, medium, long, full
    }

}

extension DateAndTimeFormat_V1.DateAndTimeFormat: StitchVersionedCodable {
    public init(previousInstance: DelayStyle_V1.PreviousInstance) {
        fatalError()
    }
}
