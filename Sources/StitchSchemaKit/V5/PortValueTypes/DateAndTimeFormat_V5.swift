//
//  DateAndTimeFormat_V5.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum DateAndTimeFormat_V5: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V5
    public typealias PreviousInstance = DateAndTimeFormat_V4.DateAndTimeFormat
    // MARK: - endif
    
    public enum DateAndTimeFormat: String, CaseIterable {
        case none, short, medium, long, full
    }

}

extension DateAndTimeFormat_V5.DateAndTimeFormat: StitchVersionedCodable {
    public init(previousInstance: DateAndTimeFormat_V5.PreviousInstance) {
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
