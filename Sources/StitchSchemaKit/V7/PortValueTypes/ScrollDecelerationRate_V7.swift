//
//  ScrollDecelerationRate_V7.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum ScrollDecelerationRate_V7: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V7
    public typealias PreviousInstance = ScrollDecelerationRate_V6.ScrollDecelerationRate
    // MARK: - endif
    

    public enum ScrollDecelerationRate: String, CaseIterable {
        case normal
        case fast
    }


}

extension ScrollDecelerationRate_V7.ScrollDecelerationRate: StitchVersionedCodable {
    public init(previousInstance: ScrollDecelerationRate_V7.PreviousInstance) {
        switch previousInstance {
            
        case .normal:
            self = .normal
        case .fast:
            self = .fast
        }
    }
}
