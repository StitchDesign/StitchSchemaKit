//
//  ProgressIndicatorStyle_V17.swift
//  StitchSchemaKit
//
//  Created by Nicholas Arner on 4/2/24.
//

import Foundation

public enum ProgressIndicatorStyle_V17: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V17
    public typealias PreviousInstance = ProgressIndicatorStyle_V16.ProgressIndicatorStyle

    // MARK: - endif
    public enum ProgressIndicatorStyle: String, Equatable, Codable, CaseIterable, Sendable {
        case circular = "Circular",
             linear = "Linear"
    }
}


extension ProgressIndicatorStyle_V17.ProgressIndicatorStyle: StitchVersionedCodable {
    public init(previousInstance: ProgressIndicatorStyle_V17.PreviousInstance) {
        switch previousInstance {
        case .circular:
            self = .circular
        case .linear:
            self = .linear
        }
    }
}
