//
//  SplitterType_V5.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation


public enum SplitterType_V5: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V5
    public typealias PreviousInstance = SplitterType_V4.SplitterType
    // MARK: - endif
 

    public enum SplitterType: String, CaseIterable {
        case inline = "Inline", // ie regular splitter: input and output
             // add GroupNodeId assoc-val ?
             input = "Input", // ie groupIutput node: output only
             output = "Output" // ie groupOutput node: input only
    }

}

extension SplitterType_V5.SplitterType: StitchVersionedCodable {
    public init(previousInstance: SplitterType_V5.PreviousInstance) {
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