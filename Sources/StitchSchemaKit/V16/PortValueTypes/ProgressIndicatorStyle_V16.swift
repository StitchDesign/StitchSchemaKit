//
//  ProgressIndicatorStyle_V16.swift
//  StitchSchemaKit
//
//  Created by Nicholas Arner on 4/2/24.
//

import Foundation

public enum ProgressIndicatorStyle_V16: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V16
    public typealias PreviousInstance = ProgressIndicatorStyle_V15.ProgressIndicatorStyle

    // MARK: - endif
    public enum ProgressIndicatorStyle: String, Equatable, Codable, CaseIterable, Sendable {
        case circular = "Circular",
             linear = "Linear"
    }
}


extension ProgressIndicatorStyle_V16.ProgressIndicatorStyle: StitchVersionedCodable {
    public init(previousInstance: ProgressIndicatorStyle_V16.PreviousInstance) {
        switch previousInstance {
        case .circular:
            self = .circular
        case .linear:
            self = .linear
        }
    }
}
