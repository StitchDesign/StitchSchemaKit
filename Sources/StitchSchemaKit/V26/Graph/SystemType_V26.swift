//
//  SystemType_V26.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/7/24.
//

import Foundation

public enum StitchSystemType_V26: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V26
    public typealias PreviousInstance = StitchSystem_V25.StitchSystemType
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

extension StitchSystemType_V26.StitchSystemType {
    public static let userLibraryName = "User Library"
}

extension StitchSystemType_V26.StitchSystemType {
    public init(previousInstance: StitchSystemType_V26.PreviousInstance) {
        // TODO: not migrating during V25 -> V26 because has not yet been released as feature
        fatalError()
    }
}
