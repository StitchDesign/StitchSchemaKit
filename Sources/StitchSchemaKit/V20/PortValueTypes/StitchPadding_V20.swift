//
//  StitchPadding.swift
//
//
//  Created by Christian J Clampitt on 7/9/24.
//

import Foundation
import SwiftUI

public enum StitchPadding_V20: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V20
    public typealias PreviousInstance = Self.StitchPadding
    // MARK: - end

    // TODO: combine with Point4D ? Or will the names `x, y, z, w` be too unfamiliar vers `top`, `bottom` etc.; e.g. does `x` refer to `left` or `right`?
    public struct StitchPadding: Equatable, Hashable, Codable {
        var top: CGFloat = .zero
        var right: CGFloat = .zero
        var bottom: CGFloat = .zero
        var left: CGFloat = .zero
    }
}

extension StitchPadding_V20.StitchPadding: StitchVersionedCodable {
    public init(previousInstance: StitchPadding_V20.PreviousInstance) {
       fatalError()
    }
}
