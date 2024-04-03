//
//  DateAndTimeFormat_V6.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum DateAndTimeFormat_V6: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V6
    public typealias PreviousInstance = DateAndTimeFormat_V5.DateAndTimeFormat
    // MARK: - endif
    
    public enum DateAndTimeFormat: String, CaseIterable {
        case none, short, medium, long, full
    }

}

extension DateAndTimeFormat_V6.DateAndTimeFormat: StitchVersionedCodable {
    public init(previousInstance: DateAndTimeFormat_V6.PreviousInstance) {
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
