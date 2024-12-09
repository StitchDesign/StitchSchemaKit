//
//  GraphSaveLocation_V28.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum GraphSaveLocation_V28: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V28
    public typealias PreviousInstance = GraphSaveLocation_V27.GraphSaveLocation
    public typealias GraphDocumentPath = GraphDocumentPath_V28.GraphDocumentPath
    public typealias StitchSystemType = StitchSystemType_V28.StitchSystemType
    // MARK: - end
    
    public enum GraphSaveLocation: Codable, Hashable, Sendable {
        case document(UUID)
        case localComponent(GraphDocumentPath)
        case systemComponent(StitchSystemType, UUID)
        case system(StitchSystemType)
    }
}

extension GraphSaveLocation_V28.GraphSaveLocation {
    public init(previousInstance: GraphSaveLocation_V28.PreviousInstance) {
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
