//
//  StitchSpacing.swift
//
//
//  Created by Christian J Clampitt on 7/6/24.
//

import Foundation
import SwiftUI

public enum StitchSpacing_V24: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V24
    public typealias PreviousInstance = StitchSpacing_V23.StitchSpacing
    // MARK: - end

    // A version of SwiftUI's ContentMode that is Codable and that we own.
    public enum StitchSpacing: Equatable, Codable, Hashable, Sendable {
        case number(Double), evenly, between
    }
}

extension StitchSpacing_V24.StitchSpacing: StitchVersionedCodable {
    public init(previousInstance: StitchSpacing_V24.PreviousInstance) {
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