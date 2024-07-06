//
//  StitchContentMode.swift
//
//
//  Created by Christian J Clampitt on 7/6/24.
//

import Foundation
import SwiftUI

public enum StitchContentMode_V19: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V19
    public typealias PreviousInstance = Self.StitchContentMode
    // MARK: - end

    // A version of SwiftUI's ContentMode that is Codable and that we own.
    public enum StitchContentMode: String, Equatable, Codable, Hashable, Sendable, CaseIterable {
        case fit = "Fit",
             fill = "Fill"
    }
}

extension StitchContentMode_V19.StitchContentMode: StitchVersionedCodable {
    public init(previousInstance: StitchContentMode_V19.PreviousInstance) {
        // First added in V19
        fatalError()
    }
}
