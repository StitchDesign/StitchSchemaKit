//
//  PortValueComparable_V22.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum PortValueComparable_V22: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V22
    public typealias PreviousInstance = PortValueComparable_V21.PortValueComparable
    public typealias StitchStringValue = StitchStringValue_V22.StitchStringValue
    // MARK: - endif

    public enum PortValueComparable: Equatable {
        case number(Double)
        case bool(Bool)
        case string(StitchStringValue)
    }

}

extension PortValueComparable_V22.PortValueComparable: StitchVersionedCodable {
    public init(previousInstance: PortValueComparable_V22.PreviousInstance) {
        switch previousInstance {
            
        case .number(let value):
            self = .number(value)
        case .bool(let value):
            self = .bool(value)
        case .string(let value):
            self = .string(.init(value.string))
        }
    }
}
