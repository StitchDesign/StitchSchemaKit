//
//  VisualMediaFitStyle_V31.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum VisualMediaFitStyle_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = VisualMediaFitStyle_V30.VisualMediaFitStyle
    // MARK: - endif
 
    public enum VisualMediaFitStyle: String, CaseIterable, Hashable {
        case fit, fill, stretch
    }

}

extension VisualMediaFitStyle_V31.VisualMediaFitStyle: StitchVersionedCodable {
    public init(previousInstance: VisualMediaFitStyle_V31.PreviousInstance) {
        switch previousInstance {
            
        case .fit:
            self = .fit
        case .fill:
            self = .fill
        case .stretch:
            self = .stretch
        }
    }
}
