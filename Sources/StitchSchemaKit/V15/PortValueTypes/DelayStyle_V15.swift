//
//  DelayStyle_V15.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum DelayStyle_V15: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V15
    public typealias PreviousInstance = DelayStyle_V14.DelayStyle
    // MARK: - endif
    
    public enum DelayStyle: String, Equatable, CaseIterable {
        case always = "Always"
        case increasing = "Increasing"
        case decreasing = "Decreasing"
    }

}

extension DelayStyle_V15.DelayStyle: StitchVersionedCodable {
    public init(previousInstance: DelayStyle_V15.PreviousInstance) {
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
