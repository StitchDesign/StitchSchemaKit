//
//  LayerTextDecoration.swift
//
//
//  Created by Elliot Boschwitz on 2/3/24.
//

import Foundation

public enum LayerTextDecoration_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = LayerTextDecoration_V30.LayerTextDecoration
    // MARK: - endif

    public enum LayerTextDecoration: String, Equatable, Codable, CaseIterable, Hashable {
        case none = "None",
             underline = "Underline",
             strikethrough = "Strikethrough"
    }
}

extension LayerTextDecoration_V31.LayerTextDecoration: StitchVersionedCodable {
    public init(previousInstance: LayerTextDecoration_V31.PreviousInstance) {
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
