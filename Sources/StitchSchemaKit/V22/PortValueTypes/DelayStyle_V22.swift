//
//  DelayStyle_V22.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum DelayStyle_V22: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V22
    public typealias PreviousInstance = DelayStyle_V21.DelayStyle
    // MARK: - endif
    
    public enum DelayStyle: String, Equatable, CaseIterable {
        case always = "Always"
        case increasing = "Increasing"
        case decreasing = "Decreasing"
    }

}

extension DelayStyle_V22.DelayStyle: StitchVersionedCodable {
    public init(previousInstance: DelayStyle_V22.PreviousInstance) {
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
