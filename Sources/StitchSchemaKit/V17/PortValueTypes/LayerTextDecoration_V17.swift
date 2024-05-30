//
//  LayerTextDecoration.swift
//
//
//  Created by Elliot Boschwitz on 2/3/24.
//

import Foundation

public enum LayerTextDecoration_V17: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V17
    public typealias PreviousInstance = LayerTextDecoration_V16.LayerTextDecoration
    // MARK: - endif

    public enum LayerTextDecoration: String, Equatable, Codable, CaseIterable {
        case none = "None",
             underline = "Underline",
             strikethrough = "Strikethrough"
    }
}

extension LayerTextDecoration_V17.LayerTextDecoration: StitchVersionedCodable {
    public init(previousInstance: LayerTextDecoration_V17.PreviousInstance) {
        switch previousInstance {
        case .none:
            self = .none
        case .underline:
            self = .underline
        case .strikethrough:
            self = .strikethrough
        }
    }
}
