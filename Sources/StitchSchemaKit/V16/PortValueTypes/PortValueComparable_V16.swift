//
//  PortValueComparable_V16.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum PortValueComparable_V16: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V16
    public typealias PreviousInstance = PortValueComparable_V15.PortValueComparable
    public typealias StitchStringValue = StitchStringValue_V16.StitchStringValue
    // MARK: - endif

    public enum PortValueComparable: Equatable {
        case number(Double)
        case bool(Bool)
        case string(StitchStringValue)
    }

}

extension PortValueComparable_V16.PortValueComparable: StitchVersionedCodable {
    public init(previousInstance: PortValueComparable_V16.PreviousInstance) {
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
