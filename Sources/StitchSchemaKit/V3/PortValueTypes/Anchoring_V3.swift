//
//  File.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Anchoring_V3: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V3
    public typealias PreviousInstance = Anchoring_V2.Anchoring
    // MARK: - endif
 
    public enum Anchoring: String, CaseIterable {
        case topLeft, topCenter, topRight,
             centerLeft, center, centerRight,
             bottomLeft, bottomCenter, bottomRight
    }

}

extension Anchoring_V3.Anchoring: StitchVersionedCodable {
    public init(previousInstance: Anchoring_V3.PreviousInstance) {
        switch previousInstance {
            
        case .topLeft:
            self = .topLeft
        case .topCenter:
            self = .topCenter
        case .topRight:
            self = .topRight
        case .centerLeft:
            self = .centerLeft
        case .center:
            self = .center
        case .centerRight:
            self = .centerRight
        case .bottomLeft:
            self = .bottomLeft
        case .bottomCenter:
            self = .bottomCenter
        case .bottomRight:
            self = .bottomRight
        }
    }
}
