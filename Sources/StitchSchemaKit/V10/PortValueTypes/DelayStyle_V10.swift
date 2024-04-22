//
//  DelayStyle_V10.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum DelayStyle_V10: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V10
    public typealias PreviousInstance = DelayStyle_V8.DelayStyle
    // MARK: - endif
    
    public enum DelayStyle: String, Equatable, CaseIterable {
        case always = "Always"
        case increasing = "Increasing"
        case decreasing = "Decreasing"
    }

}

extension DelayStyle_V10.DelayStyle: StitchVersionedCodable {
    public init(previousInstance: DelayStyle_V10.PreviousInstance) {
        switch previousInstance {
            
        case .always:
            self = .always
        case .increasing:
            self = .increasing
        case .decreasing:
            self = .decreasing
        }
    }
}
