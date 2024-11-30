//
//  StitchSystem_V28.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/7/24.
//

import Foundation

public enum StitchSystem_V28: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V28
    public typealias PreviousInstance = StitchSystem_V27.StitchSystem
    public typealias StitchSystemType = StitchSystemType_V28.StitchSystemType
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

extension StitchSystem_V28.StitchSystem {
    public init(previousInstance: StitchSystem_V28.PreviousInstance) {
        self = .init(id: .init(previousInstance: previousInstance.id),
                     name: previousInstance.name)
    }
}
