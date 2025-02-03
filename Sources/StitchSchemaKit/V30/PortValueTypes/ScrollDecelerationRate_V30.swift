//
//  ScrollDecelerationRate_V30.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum ScrollDecelerationRate_V30: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V30
    public typealias PreviousInstance = ScrollDecelerationRate_V29.ScrollDecelerationRate
    // MARK: - endif
    

    public enum ScrollDecelerationRate: String, CaseIterable, Hashable {
        case normal
        case fast
    }


}

extension ScrollDecelerationRate_V30.ScrollDecelerationRate: StitchVersionedCodable {
    public init(previousInstance: ScrollDecelerationRate_V30.PreviousInstance) {
        switch previousInstance {
            
        case .normal:
            self = .normal
        case .fast:
            self = .fast
        }
    }
}
