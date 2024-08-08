//
//  StitchContentMode.swift
//
//
//  Created by Christian J Clampitt on 7/6/24.
//

import Foundation
import SwiftUI

public enum StitchContentMode_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V23
    public typealias PreviousInstance = StitchContentMode_V22.StitchContentMode
    // MARK: - end

    // A version of SwiftUI's ContentMode that is Codable and that we own.
    public enum StitchContentMode: String, Equatable, Codable, Hashable, Sendable, CaseIterable {
        case fit = "Fit",
             fill = "Fill"
    }
}

extension StitchContentMode_V23.StitchContentMode: StitchVersionedCodable {
    public init(previousInstance: StitchContentMode_V23.PreviousInstance) {
        switch previousInstance {
        case .fill:
            self = .fill
        case .fit:
            self = .fit
        }
    }
}
