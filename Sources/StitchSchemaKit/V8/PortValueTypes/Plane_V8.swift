//
//  Plane_V8.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Plane_V8: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V8
    public typealias PreviousInstance = Plane_V7.Plane
    // MARK: - endif
  
    public enum Plane: String, CaseIterable {
        case any, horizontal, vertical
    }
}

extension Plane_V8.Plane: StitchVersionedCodable {
    public init(previousInstance: Plane_V8.PreviousInstance) {
        switch previousInstance {
            
        case .any:
            self = .any
        case .horizontal:
            self = .horizontal
        case .vertical:
            self = .vertical
        }
    }
}
