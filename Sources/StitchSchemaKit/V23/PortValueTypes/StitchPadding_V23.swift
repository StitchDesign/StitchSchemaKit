//
//  StitchPadding.swift
//
//
//  Created by Christian J Clampitt on 7/9/24.
//

import Foundation
import SwiftUI

public enum StitchPadding_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V23
    public typealias PreviousInstance = StitchPadding_V22.StitchPadding
    // MARK: - end

    // TODO: combine with Point4D ? Or will the names `x, y, z, w` be too unfamiliar vers `top`, `bottom` etc.; e.g. does `x` refer to `left` or `right`?
    public struct StitchPadding: Equatable, Hashable, Codable {
        public var top: CGFloat
        public var right: CGFloat
        public var bottom: CGFloat
        public var left: CGFloat
        
        public init(top: Double, 
                    right: Double, 
                    bottom: Double,
                    left: Double) {
            self.top = top
            self.right = right
            self.bottom = bottom
            self.left = left
        }
    }
}

extension StitchPadding_V23.StitchPadding: StitchVersionedCodable {
    public init(previousInstance: StitchPadding_V23.PreviousInstance) {
        self.init(top: previousInstance.top,
                  right: previousInstance.right,
                  bottom: previousInstance.bottom,
                  left: previousInstance.left)
    }
}
