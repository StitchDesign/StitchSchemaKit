//
//  StitchSystem_V31.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/7/24.
//

import Foundation

public enum StitchSystem_V31: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V31
    public typealias PreviousInstance = StitchSystem_V30.StitchSystem
    public typealias StitchSystemType = StitchSystemType_V31.StitchSystemType
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

extension StitchSystem_V31.StitchSystem {
    public init(previousInstance: StitchSystem_V31.PreviousInstance) {
        self = .init(id: .init(previousInstance: previousInstance.id),
                     name: previousInstance.name)
    }
}
