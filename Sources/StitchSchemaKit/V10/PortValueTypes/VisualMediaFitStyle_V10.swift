//
//  VisualMediaFitStyle_V10.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum VisualMediaFitStyle_V10: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V10
    public typealias PreviousInstance = VisualMediaFitStyle_V8.VisualMediaFitStyle
    // MARK: - endif
 
    public enum VisualMediaFitStyle: String, CaseIterable {
        case fit, fill, stretch
    }

}

extension VisualMediaFitStyle_V10.VisualMediaFitStyle: StitchVersionedCodable {
    public init(previousInstance: VisualMediaFitStyle_V10.PreviousInstance) {
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
