//
//  DateAndTimeFormat_V31.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum DateAndTimeFormat_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = DateAndTimeFormat_V30.DateAndTimeFormat
    // MARK: - endif
    
    public enum DateAndTimeFormat: String, CaseIterable, Hashable {
        case none, short, medium, long, full
    }

}

extension DateAndTimeFormat_V31.DateAndTimeFormat: StitchVersionedCodable {
    public init(previousInstance: DateAndTimeFormat_V31.PreviousInstance) {
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
