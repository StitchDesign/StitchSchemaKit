//
//  DelayStyle_V30.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum DelayStyle_V30: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V30
    public typealias PreviousInstance = DelayStyle_V29.DelayStyle
    // MARK: - endif
    
    public enum DelayStyle: String, Equatable, CaseIterable, Hashable {
        case always = "Always"
        case increasing = "Increasing"
        case decreasing = "Decreasing"
    }

}

extension DelayStyle_V30.DelayStyle: StitchVersionedCodable {
    public init(previousInstance: DelayStyle_V30.PreviousInstance) {
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
