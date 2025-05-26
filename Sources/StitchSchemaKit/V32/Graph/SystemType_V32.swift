//
//  SystemType_V32.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/7/24.
//

import Foundation

public enum StitchSystemType_V32: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V32
    public typealias PreviousInstance = StitchSystem_V31.StitchSystemType
    // MARK: - end
    
    public enum StitchSystemType: Codable, Hashable, Identifiable, CustomStringConvertible, Sendable {
        case userLibrary
        case system(UUID)
        
        public var id: Int {
            switch self {
            case .userLibrary:
                return 0
                
            case .system(let id):
                return id.hashValue
            }
        }
        
        public var description: String {
            "\(self.id)"
        }
    }
}

extension StitchSystemType_V32.StitchSystemType {
    public static let userLibraryName = "User Library"
}

extension StitchSystemType_V32.StitchSystemType {
    public init(previousInstance: StitchSystemType_V32.PreviousInstance) {
        switch previousInstance {
        case .userLibrary:
            self = .userLibrary
        case .system(let id):
            self = .system(id)
        }
    }
}
