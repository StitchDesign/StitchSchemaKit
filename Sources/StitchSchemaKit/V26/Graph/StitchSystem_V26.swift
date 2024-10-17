//
//  StitchSystem_V26.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/7/24.
//

import Foundation

public enum StitchSystem_V26: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V26
    public typealias PreviousInstance = StitchSystem_V25.StitchSystem
    public typealias StitchSystemType = StitchSystemType_V26.StitchSystemType
    // MARK: - end

    public struct StitchSystem: StitchVersionedCodable, Equatable, Sendable {
        public var id: StitchSystemType
        public var name: String
        
        public init(id: StitchSystemType,
                    name: String) {
            self.id = id
            self.name = name
        }
    }
}

extension StitchSystem_V26.StitchSystem {
    public init(previousInstance: StitchSystem_V26.PreviousInstance) {
        // Note: not migrating during V25 -> V26 because has not yet been released as feature
        fatalError()
    }
}
