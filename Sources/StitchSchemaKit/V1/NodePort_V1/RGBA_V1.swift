//
//  RGBA_V1.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum RGBA_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.RGBA
    // MARK: - endif
    

    public struct RGBA: Codable, Equatable {
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

extension RGBA_V1.RGBA: StitchVersionedCodable {
    public init(previousInstance: RGBA_V1.PreviousInstance) {
        fatalError()
    }
}
