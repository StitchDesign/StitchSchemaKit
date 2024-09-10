//
//  StitchOrientation_V8.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum StitchOrientation_V8: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V8
    public typealias PreviousInstance = StitchOrientation_V7.StitchOrientation
    // MARK: - endif
    
    // Used for VStack vs HStack on layer groups
    public enum StitchOrientation: String, CaseIterable {
        case none, horizontal, vertical
    }

}

extension StitchOrientation_V8.StitchOrientation: StitchVersionedCodable {
    public init(previousInstance: StitchOrientation_V8.PreviousInstance) {
        switch previousInstance {
            
        case .none:
            self = .none
        case .horizontal:
            self = .horizontal
        case .vertical:
            self = .vertical
        }
    }
}
