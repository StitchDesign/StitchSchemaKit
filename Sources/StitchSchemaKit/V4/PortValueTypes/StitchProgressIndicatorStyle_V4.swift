//
//  StitchProgressIndicatorStyle_V4.swift
//  StitchSchemaKit
//
//  Created by Nicholas Arner on 3/26/24.
//

import SwiftUI

public enum StitchProgressIndicatorStyle_V4: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V4
    public typealias PreviousInstance = Self.StitchProgressIndicatorStyle
    
    // MARK: - endif
    public enum StitchProgressIndicatorStyle: String, Equatable, Codable, CaseIterable, Sendable {
        case large = "Large",
             medium = "Medium"        
    }
}

extension StitchProgressIndicatorStyle_V4.StitchProgressIndicatorStyle: StitchVersionedCodable {
    public init(previousInstance: StitchProgressIndicatorStyle_V4.PreviousInstance) {
        fatalError() // first time added
    }
}
