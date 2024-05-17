//
//  PortValueComparable_V15.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum PortValueComparable_V15: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V15
    public typealias PreviousInstance = PortValueComparable_V14.PortValueComparable
    public typealias StitchStringValue = StitchStringValue_V15.StitchStringValue
    // MARK: - endif

    public enum PortValueComparable: Equatable, Hashable {
        case number(Double)
        case bool(Bool)
        case string(StitchStringValue)
    }

}

extension PortValueComparable_V15.PortValueComparable: StitchVersionedCodable {
    public init(previousInstance: PortValueComparable_V15.PreviousInstance) {
        switch previousInstance {
            
        case .number(let value):
            self = .number(value)
        case .bool(let value):
            self = .bool(value)
        case .string(let value):
            self = .string(.init(value))
        }
    }
}
