//
//  StitchPadding.swift
//
//
//  Created by Christian J Clampitt on 7/9/24.
//

import Foundation
import SwiftUI

public enum StitchPadding_V30: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V30
    public typealias PreviousInstance = StitchPadding_V29.StitchPadding
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

extension StitchPadding_V30.StitchPadding: StitchVersionedCodable {
    public init(previousInstance: StitchPadding_V30.PreviousInstance) {
        self.init(top: previousInstance.top,
                  right: previousInstance.right,
                  bottom: previousInstance.bottom,
                  left: previousInstance.left)
    }
}
