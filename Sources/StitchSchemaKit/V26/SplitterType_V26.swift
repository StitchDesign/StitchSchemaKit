//
//  SplitterType_V26.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation


public enum SplitterType_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = SplitterType_V25.SplitterType
    // MARK: - endif
 

    public enum SplitterType: String, CaseIterable, Hashable {
        case inline = "Inline", // ie regular splitter: input and output
             // add GroupNodeId assoc-val ?
             input = "Input", // ie groupIutput node: output only
             output = "Output" // ie groupOutput node: input only
    }

}

extension SplitterType_V26.SplitterType: StitchVersionedCodable {
    public init(previousInstance: SplitterType_V26.PreviousInstance) {
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
