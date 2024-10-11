//
//  ScrollDecelerationRate_V25.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum ScrollDecelerationRate_V25: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V25
    public typealias PreviousInstance = ScrollDecelerationRate_V24.ScrollDecelerationRate
    // MARK: - endif
    

    public enum ScrollDecelerationRate: String, CaseIterable, Hashable {
        case normal
        case fast
    }


}

extension ScrollDecelerationRate_V25.ScrollDecelerationRate: StitchVersionedCodable {
    public init(previousInstance: ScrollDecelerationRate_V25.PreviousInstance) {
        switch previousInstance {
            
        case .normal:
            self = .normal
        case .fast:
            self = .fast
        }
    }
}
