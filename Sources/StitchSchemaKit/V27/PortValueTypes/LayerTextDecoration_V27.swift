//
//  LayerTextDecoration.swift
//
//
//  Created by Elliot Boschwitz on 2/3/24.
//

import Foundation

public enum LayerTextDecoration_V27: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V27
    public typealias PreviousInstance = LayerTextDecoration_V26.LayerTextDecoration
    // MARK: - endif

    public enum LayerTextDecoration: String, Equatable, Codable, CaseIterable, Hashable {
        case none = "None",
             underline = "Underline",
             strikethrough = "Strikethrough"
    }
}

extension LayerTextDecoration_V27.LayerTextDecoration: StitchVersionedCodable {
    public init(previousInstance: LayerTextDecoration_V27.PreviousInstance) {
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