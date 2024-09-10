//
//  SplitterType_V1.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation


public enum SplitterType_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.SplitterType
    // MARK: - endif
 

    public enum SplitterType: String, CaseIterable {
        case inline = "Inline", // ie regular splitter: input and output
             // add GroupNodeId assoc-val ?
             input = "Input", // ie groupIutput node: output only
             output = "Output" // ie groupOutput node: input only
    }

}

extension SplitterType_V1.SplitterType: StitchVersionedCodable {
    public init(previousInstance: SplitterType_V1.PreviousInstance) {
        fatalError()
    }
}
