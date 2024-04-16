//
//  PortValueComparable_V7.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum PortValueComparable_V7: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V7
    public typealias PreviousInstance = PortValueComparable_V6.PortValueComparable
    // MARK: - endif

    public enum PortValueComparable: Equatable, Hashable {
        case number(Double)
        case bool(Bool)
        case string(String)
    }

}

extension PortValueComparable_V7.PortValueComparable: StitchVersionedCodable {
    public init(previousInstance: PortValueComparable_V7.PreviousInstance) {
        switch previousInstance {
            
        case .number(let value):
            self = .number(value)
        case .bool(let value):
            self = .bool(value)
        case .string(let value):
            self = .string(value)
        }
    }
}
