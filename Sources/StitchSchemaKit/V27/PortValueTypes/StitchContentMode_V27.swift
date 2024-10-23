//
//  StitchContentMode.swift
//
//
//  Created by Christian J Clampitt on 7/6/24.
//

import Foundation
import SwiftUI

public enum StitchContentMode_V27: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V27
    public typealias PreviousInstance = StitchContentMode_V26.StitchContentMode
    // MARK: - end

    // A version of SwiftUI's ContentMode that is Codable and that we own.
    public enum StitchContentMode: String, Equatable, Codable, Hashable, Sendable, CaseIterable {
        case fit = "Fit",
             fill = "Fill"
    }
}

extension StitchContentMode_V27.StitchContentMode: StitchVersionedCodable {
    public init(previousInstance: StitchContentMode_V27.PreviousInstance) {
        switch previousInstance {
        case .fill:
            self = .fill
        case .fit:
            self = .fit
        }
    }
}
