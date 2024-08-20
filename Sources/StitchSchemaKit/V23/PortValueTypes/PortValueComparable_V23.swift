//
//  PortValueComparable_V23.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum PortValueComparable_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V23
    public typealias PreviousInstance = PortValueComparable_V22.PortValueComparable
    public typealias StitchStringValue = StitchStringValue_V23.StitchStringValue
    // MARK: - endif

    public enum PortValueComparable: Equatable {
        case number(Double)
        case bool(Bool)
        case string(StitchStringValue)
    }

}

extension PortValueComparable_V23.PortValueComparable: StitchVersionedCodable {
    public init(previousInstance: PortValueComparable_V23.PreviousInstance) {
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
