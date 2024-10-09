//
//  GraphDocumentPath_V25.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum GraphDocumentPath_V25: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V25
    public typealias PreviousInstance = Self.GraphDocumentPath
    // MARK: - end

    public struct GraphDocumentPath: Codable, Equatable, Sendable {
        public let docId: UUID
        public let componentsPath: [UUID]
        
        public init(docId: UUID,
                    componentsPath: [UUID]) {
            self.docId = docId
            self.componentsPath = componentsPath
        }
    }
}

extension GraphDocumentPath_V25.GraphDocumentPath {
    public init(previousInstance: GraphDocumentPath_V25.PreviousInstance) {
        // TODO: fix after version 25
        fatalError()
    }
}