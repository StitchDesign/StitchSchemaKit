//
//  RGBA_V9.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum RGBA_V9: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V9
    public typealias PreviousInstance = RGBA_V8.RGBA
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

extension RGBA_V9.RGBA: StitchVersionedCodable {
    public init(previousInstance: RGBA_V9.PreviousInstance) {
        self.init(red: previousInstance.red, green: previousInstance.green, blue: previousInstance.blue, alpha: previousInstance.alpha)
    }
}
