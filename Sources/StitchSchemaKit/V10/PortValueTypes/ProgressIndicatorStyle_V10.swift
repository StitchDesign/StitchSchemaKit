//
//  ProgressIndicatorStyle_V10.swift
//  StitchSchemaKit
//
//  Created by Nicholas Arner on 4/2/24.
//

import Foundation

public enum ProgressIndicatorStyle_V10: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V10
    public typealias PreviousInstance = ProgressIndicatorStyle_V8.ProgressIndicatorStyle

    // MARK: - endif
    public enum ProgressIndicatorStyle: String, Equatable, Codable, CaseIterable, Sendable {
        case circular = "Circular",
             linear = "Linear"
    }
}


extension ProgressIndicatorStyle_V10.ProgressIndicatorStyle: StitchVersionedCodable {
    public init(previousInstance: ProgressIndicatorStyle_V10.PreviousInstance) {
        switch previousInstance {
        case .circular:
            self = .circular
        case .linear:
            self = .linear
        }
    }
}
