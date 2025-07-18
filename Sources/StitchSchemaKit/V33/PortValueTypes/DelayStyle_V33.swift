//
//  DelayStyle_V33.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum DelayStyle_V33: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V33
    public typealias PreviousInstance = DelayStyle_V32.DelayStyle
    // MARK: - endif
    
    public enum DelayStyle: String, Equatable, CaseIterable, Hashable {
        case always = "Always"
        case increasing = "Increasing"
        case decreasing = "Decreasing"
    }

}

extension DelayStyle_V33.DelayStyle: StitchVersionedCodable {
    public init(previousInstance: DelayStyle_V33.PreviousInstance) {
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
