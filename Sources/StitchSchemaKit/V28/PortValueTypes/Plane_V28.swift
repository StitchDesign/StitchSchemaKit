//
//  Plane_V28.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Plane_V28: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V28
    public typealias PreviousInstance = Plane_V27.Plane
    // MARK: - endif
  
    public enum Plane: String, CaseIterable, Hashable {
        case any, horizontal, vertical
    }
}

extension Plane_V28.Plane: StitchVersionedCodable {
    public init(previousInstance: Plane_V28.PreviousInstance) {
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
