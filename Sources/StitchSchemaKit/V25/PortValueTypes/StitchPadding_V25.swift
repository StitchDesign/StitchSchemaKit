//
//  StitchPadding.swift
//
//
//  Created by Christian J Clampitt on 7/9/24.
//

import Foundation
import SwiftUI

public enum StitchPadding_V25: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V25
    public typealias PreviousInstance = StitchPadding_V24.StitchPadding
    // MARK: - end

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

extension StitchPadding_V25.StitchPadding: StitchVersionedCodable {
    public init(previousInstance: StitchPadding_V25.PreviousInstance) {
        self.init(top: previousInstance.top,
                  right: previousInstance.right,
                  bottom: previousInstance.bottom,
                  left: previousInstance.left)
    }
}