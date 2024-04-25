//
//  SplitterType_V14.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation


public enum SplitterType_V14: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V14
    public typealias PreviousInstance = SplitterType_V13.SplitterType
    // MARK: - endif
 

    public enum SplitterType: String, CaseIterable {
        case inline = "Inline", // ie regular splitter: input and output
             // add GroupNodeId assoc-val ?
             input = "Input", // ie groupIutput node: output only
             output = "Output" // ie groupOutput node: input only
    }

}

extension SplitterType_V14.SplitterType: StitchVersionedCodable {
    public init(previousInstance: SplitterType_V14.PreviousInstance) {
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
