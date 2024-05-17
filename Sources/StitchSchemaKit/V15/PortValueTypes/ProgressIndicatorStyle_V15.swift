//
//  ProgressIndicatorStyle_V15.swift
//  StitchSchemaKit
//
//  Created by Nicholas Arner on 4/2/24.
//

import Foundation

public enum ProgressIndicatorStyle_V15: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V15
    public typealias PreviousInstance = ProgressIndicatorStyle_V14.ProgressIndicatorStyle

    // MARK: - endif
    public enum ProgressIndicatorStyle: String, Equatable, Codable, CaseIterable, Sendable {
        case circular = "Circular",
             linear = "Linear"
    }
}


extension ProgressIndicatorStyle_V15.ProgressIndicatorStyle: StitchVersionedCodable {
    public init(previousInstance: ProgressIndicatorStyle_V15.PreviousInstance) {
        switch previousInstance {
        case .circular:
            self = .circular
        case .linear:
            self = .linear
        }
    }
}
