//
//  GraphSaveLocation_V31.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum GraphSaveLocation_V31: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V31
    public typealias PreviousInstance = GraphSaveLocation_V30.GraphSaveLocation
    public typealias GraphDocumentPath = GraphDocumentPath_V31.GraphDocumentPath
    public typealias StitchSystemType = StitchSystemType_V31.StitchSystemType
    // MARK: - end
    
    public enum GraphSaveLocation: Codable, Hashable, Sendable {
        case document(UUID)
        case localComponent(GraphDocumentPath)
        case systemComponent(StitchSystemType, UUID)
        case system(StitchSystemType)
    }
}

extension GraphSaveLocation_V31.GraphSaveLocation {
    public init(previousInstance: GraphSaveLocation_V31.PreviousInstance) {
        switch previousInstance {
        case .document(let uuid):
            self = .document(uuid)
        case .localComponent(let path):
            self = .localComponent(.init(previousInstance: path))
        case .systemComponent(let type, let uuid):
            self = .systemComponent(.init(previousInstance: type), uuid)
        case .system(let type):
            self = .system(.init(previousInstance: type))
        }
    }
}
