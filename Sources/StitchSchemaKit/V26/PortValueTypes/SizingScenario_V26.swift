//
//  SizingScenario.swift
//
//
//  Created by Christian J Clampitt on 7/9/24.
//

import Foundation
import SwiftUI

public enum SizingScenario_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V26
    public typealias PreviousInstance = SizingScenario_V25.SizingScenario
    // MARK: - end

    // A version of SwiftUI's ContentMode that is Codable and that we own.
    public enum SizingScenario: String, Equatable, Hashable, Codable, CaseIterable {
        case auto = "Auto", // manually specify both H and W
             constrainHeight = "Constrain Height", // manually specify W; H will follow
             constrainWidth = "Constrain Width" // manually specify H; W will follow
    }
}

extension SizingScenario_V26.SizingScenario: StitchVersionedCodable {
    public init(previousInstance: SizingScenario_V26.PreviousInstance) {
        switch previousInstance {
        case .auto:
            self = .auto
        case .constrainWidth:
            self = .constrainWidth
        case .constrainHeight:
            self = .constrainHeight
        }
    }
}
