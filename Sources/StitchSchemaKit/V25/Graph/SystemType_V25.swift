//
//  SystemType_V25.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/7/24.
//

import Foundation

public enum StitchSystemType_V25: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V25
    public typealias PreviousInstance = Self.StitchSystemType
    // MARK: - end
    
    public enum StitchSystemType: Codable, Hashable, Sendable {
        case userLibrary
        case system(UUID)
    }
}

extension StitchSystemType_V25.StitchSystemType {
    public init(previousInstance: StitchSystemType_V25.PreviousInstance) {
        // TODO: fix after version 25 (wasn't encoded ever in version 24)
        fatalError()
    }
}
