//
//  VisualMediaFitStyle_V20.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum VisualMediaFitStyle_V20: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V20
    public typealias PreviousInstance = VisualMediaFitStyle_V19.VisualMediaFitStyle
    // MARK: - endif
 
    public enum VisualMediaFitStyle: String, CaseIterable {
        case fit, fill, stretch
    }

}

extension VisualMediaFitStyle_V20.VisualMediaFitStyle: StitchVersionedCodable {
    public init(previousInstance: VisualMediaFitStyle_V20.PreviousInstance) {
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
