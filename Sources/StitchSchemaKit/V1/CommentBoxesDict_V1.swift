//
//  CommentBoxesDict_V1.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation


public enum CommentBoxesDict_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.CommentBoxesDict
    // MARK: - endif
 

    public typealias CommentBoxesDict = [CommentBoxId: CommentBoxData]
}

extension CommentBoxesDict_V1.CommentBoxesDict: StitchVersionedCodable {
    public init(previousInstance: CommentBoxesDict_V1.PreviousInstance) {
        fatalError()
    }
}
