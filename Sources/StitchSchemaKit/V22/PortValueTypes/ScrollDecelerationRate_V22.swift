//
//  ScrollDecelerationRate_V22.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum ScrollDecelerationRate_V22: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V22
    public typealias PreviousInstance = ScrollDecelerationRate_V21.ScrollDecelerationRate
    // MARK: - endif
    

    public enum ScrollDecelerationRate: String, CaseIterable {
        case normal
        case fast
    }


}

extension ScrollDecelerationRate_V22.ScrollDecelerationRate: StitchVersionedCodable {
    public init(previousInstance: ScrollDecelerationRate_V22.PreviousInstance) {
        switch previousInstance {
            
        case .normal:
            self = .normal
        case .fast:
            self = .fast
        }
    }
}
