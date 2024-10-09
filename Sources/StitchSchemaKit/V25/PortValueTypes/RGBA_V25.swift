//
//  RGBA_V25.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum RGBA_V25: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V25
    public typealias PreviousInstance = RGBA_V24.RGBA
    // MARK: - endif
    

    public struct RGBA: Equatable {
        public let red: CGFloat
        public let green: CGFloat
        public let blue: CGFloat
        public let alpha: CGFloat
        
        public init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
            self.red = red
            self.green = green
            self.blue = blue
            self.alpha = alpha
        }
    }

}

extension RGBA_V25.RGBA: StitchVersionedCodable {
    public init(previousInstance: RGBA_V25.PreviousInstance) {
        self.init(red: previousInstance.red, green: previousInstance.green, blue: previousInstance.blue, alpha: previousInstance.alpha)
    }
}