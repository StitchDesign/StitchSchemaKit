//
//  DateAndTimeFormat_V17.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum DateAndTimeFormat_V17: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V17
    public typealias PreviousInstance = DateAndTimeFormat_V16.DateAndTimeFormat
    // MARK: - endif
    
    public enum DateAndTimeFormat: String, CaseIterable {
        case none, short, medium, long, full
    }

}

extension DateAndTimeFormat_V17.DateAndTimeFormat: StitchVersionedCodable {
    public init(previousInstance: DateAndTimeFormat_V17.PreviousInstance) {
        switch previousInstance {
            
        case .none:
            self = .none
        case .short:
            self = .short
        case .medium:
            self = .medium
        case .long:
            self = .long
        case .full:
            self = .full
        }
    }
}
