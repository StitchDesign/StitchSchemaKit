//
//  LayerTextDecoration.swift
//
//
//  Created by Elliot Boschwitz on 2/3/24.
//

import Foundation

public enum LayerTextDecoration_V7: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V7
    public typealias PreviousInstance = LayerTextDecoration_V6.LayerTextDecoration
    // MARK: - endif

    public enum LayerTextDecoration: String, Equatable, Codable, CaseIterable {
        case none = "None",
             underline = "Underline",
             strikethrough = "Strikethrough"
    }
}

extension LayerTextDecoration_V7.LayerTextDecoration: StitchVersionedCodable {
    public init(previousInstance: LayerTextDecoration_V7.PreviousInstance) {
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
