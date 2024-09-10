//
//  PortValueComparable_V1.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum PortValueComparable_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.PortValueComparable
    // MARK: - endif

    public enum PortValueComparable: Equatable, Hashable {
        case number(Double)
        case bool(Bool)
        case string(String)
    }

}

extension PortValueComparable_V1.PortValueComparable: StitchVersionedCodable {
    public init(previousInstance: PortValueComparable_V1.PreviousInstance) {
        fatalError()
    }
}
