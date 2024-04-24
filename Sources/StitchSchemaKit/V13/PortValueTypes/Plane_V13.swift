//
//  Plane_V13.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Plane_V13: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V13
    public typealias PreviousInstance = Plane_V12.Plane
    // MARK: - endif
  
    public enum Plane: String, CaseIterable {
        case any, horizontal, vertical
    }
}

extension Plane_V13.Plane: StitchVersionedCodable {
    public init(previousInstance: Plane_V13.PreviousInstance) {
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
