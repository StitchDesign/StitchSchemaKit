//
//  GraphDocumentPath_V32.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum GraphDocumentPath_V32: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V32
    public typealias PreviousInstance = GraphDocumentPath_V31.GraphDocumentPath
    // MARK: - end

    public struct GraphDocumentPath: Codable, Hashable, Sendable {
        public let docId: UUID
        public var componentId: UUID
        public let componentsPath: [UUID]
        
        public init(docId: UUID,
                    componentId: UUID,
                    componentsPath: [UUID]) {
            self.docId = docId
            self.componentId = componentId
            self.componentsPath = componentsPath
        }
    }
}

extension GraphDocumentPath_V32.GraphDocumentPath {
    public init(previousInstance: GraphDocumentPath_V32.PreviousInstance) {
        self = .init(docId: previousInstance.docId,
                     componentId: previousInstance.componentId,
                     componentsPath: previousInstance.componentsPath)
    }
}
