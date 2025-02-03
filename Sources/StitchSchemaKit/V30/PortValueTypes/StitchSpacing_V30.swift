//
//  StitchSpacing.swift
//
//
//  Created by Christian J Clampitt on 7/6/24.
//

import Foundation
import SwiftUI

public enum StitchSpacing_V30: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V30
    public typealias PreviousInstance = StitchSpacing_V29.StitchSpacing
    // MARK: - end

    // A version of SwiftUI's ContentMode that is Codable and that we own.
    public enum StitchSpacing: Equatable, Codable, Hashable, Sendable {
        case number(Double), evenly, between
    }
}

extension StitchSpacing_V30.StitchSpacing: StitchVersionedCodable {
    public init(previousInstance: StitchSpacing_V30.PreviousInstance) {
        switch previousInstance {
        case .number(let x):
            self = .number(x)
        case .between:
            self = .between
        case .evenly:
            self = .evenly
        }
    }
}
