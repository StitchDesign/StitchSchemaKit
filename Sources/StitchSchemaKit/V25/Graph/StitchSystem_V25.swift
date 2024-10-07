//
//  StitchSystem_V25.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/7/24.
//

import Foundation

public enum StitchSystem_V25: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V25
    public typealias PreviousInstance = Self.StitchSystem
    // MARK: - end

    public struct StitchSystem: StitchVersionedCodable, Equatable, Sendable {
        public var id: UUID
        public var name: String
        
        public init(id: UUID,
                    name: String) {
            self.id = id
            self.name = name
        }
    }
}

extension StitchSystem_V25.StitchSystem {
    public init(previousInstance: StitchSystem_V25.PreviousInstance) {
        // TODO: fix after version 25 (wasn't encoded ever in version 24)
        fatalError()
    }
}
