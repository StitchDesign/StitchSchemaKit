//
//  StitchSpacing.swift
//
//
//  Created by Christian J Clampitt on 7/6/24.
//

import Foundation
import SwiftUI

public enum StitchSpacing_V19: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V19
    public typealias PreviousInstance = Self.StitchSpacing
    // MARK: - end

    // A version of SwiftUI's ContentMode that is Codable and that we own.
    public enum StitchSpacing: Equatable, Codable, Hashable, Sendable {
        case number(Double), evenly, between
    }
}

extension StitchSpacing_V19.StitchSpacing: StitchVersionedCodable {
    public init(previousInstance: StitchSpacing_V19.PreviousInstance) {
        // First added in V19
        fatalError()
    }
}
