//
//  StitchProgressIndicatorStyle_V5.swift
//  StitchSchemaKit
//
//  Created by Nicholas Arner on 3/26/24.
//

import SwiftUI

public enum StitchProgressIndicatorStyle_V5: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V5
    public typealias PreviousInstance = StitchProgressIndicatorStyle_V4.StitchProgressIndicatorStyle
    
    // MARK: - endif
    public enum StitchProgressIndicatorStyle: String, Equatable, Codable, CaseIterable, Sendable {
        case large = "Large",
             medium = "Medium"        
    }
}

extension StitchProgressIndicatorStyle_V5.StitchProgressIndicatorStyle: StitchVersionedCodable {
    public init(previousInstance: StitchProgressIndicatorStyle_V5.PreviousInstance) {
        switch previousInstance {
        case .large:
            self = .large
        case .medium:
            self = .medium
        }
    }
}
