//
//  SplitterType_V32.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation


public enum SplitterType_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = SplitterType_V31.SplitterType
    // MARK: - endif
 

    public enum SplitterType: String, CaseIterable, Hashable {
        case inline = "Inline", // ie regular splitter: input and output
             // add GroupNodeId assoc-val ?
             input = "Input", // ie groupIutput node: output only
             output = "Output" // ie groupOutput node: input only
    }

}

extension SplitterType_V32.SplitterType: StitchVersionedCodable {
    public init(previousInstance: SplitterType_V32.PreviousInstance) {
        switch previousInstance {
            
        case .inline:
            self = .inline
        case .input:
            self = .input
        case .output:
            self = .output
        }
    }
}
