//
//  Plane_V32.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Plane_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = Plane_V31.Plane
    // MARK: - endif
  
    public enum Plane: String, CaseIterable, Hashable {
        case any, horizontal, vertical
    }
}

extension Plane_V32.Plane: StitchVersionedCodable {
    public init(previousInstance: Plane_V32.PreviousInstance) {
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
