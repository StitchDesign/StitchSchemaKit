//
//  PortValueComparable_V26.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum PortValueComparable_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = PortValueComparable_V25.PortValueComparable
    public typealias StitchStringValue = StitchStringValue_V26.StitchStringValue
    // MARK: - endif

    public enum PortValueComparable: Equatable, Hashable {
        case number(Double)
        case bool(Bool)
        case string(StitchStringValue)
    }

}

extension PortValueComparable_V26.PortValueComparable: StitchVersionedCodable {
    public init(previousInstance: PortValueComparable_V26.PreviousInstance) {
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
