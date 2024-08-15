//
//  SizingScenario.swift
//
//
//  Created by Christian J Clampitt on 7/9/24.
//

import Foundation
import SwiftUI

public enum SizingScenario_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V23
    public typealias PreviousInstance = SizingScenario_V22.SizingScenario
    // MARK: - end

    // A version of SwiftUI's ContentMode that is Codable and that we own.
    public enum SizingScenario: String, Equatable, Hashable, Codable, CaseIterable {
        case auto = "Auto", // manually specify both H and W
             constrainHeight = "Constrain Height", // manually specify W; H will follow
             constrainWidth = "Constrain Width" // manually specify H; W will follow
    }
}

extension SizingScenario_V23.SizingScenario: StitchVersionedCodable {
    public init(previousInstance: SizingScenario_V23.PreviousInstance) {
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