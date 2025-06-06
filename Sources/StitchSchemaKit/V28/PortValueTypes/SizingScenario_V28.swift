//
//  SizingScenario.swift
//
//
//  Created by Christian J Clampitt on 7/9/24.
//

import Foundation
import SwiftUI

public enum SizingScenario_V28: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V28
    public typealias PreviousInstance = SizingScenario_V27.SizingScenario
    // MARK: - end

    // A version of SwiftUI's ContentMode that is Codable and that we own.
    public enum SizingScenario: String, Equatable, Hashable, Codable, CaseIterable {
        case auto = "Auto", // manually specify both H and W
             constrainHeight = "Constrain Height", // manually specify W; H will follow
             constrainWidth = "Constrain Width" // manually specify H; W will follow
    }
}

extension SizingScenario_V28.SizingScenario: StitchVersionedCodable {
    public init(previousInstance: SizingScenario_V28.PreviousInstance) {
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
