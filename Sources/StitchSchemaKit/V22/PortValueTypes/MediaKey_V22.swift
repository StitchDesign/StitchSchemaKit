//
//  MediaKey_V22.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum MediaKey_V22: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V22
    public typealias PreviousInstance = MediaKey_V21.MediaKey
    // MARK: - endif
 
    public struct MediaKey: Codable, Hashable {
        public let filename: String // eg. `dogs`
        public let fileExtension: String // eg `.avi`
        
        public init(filename: String, fileExtension: String) {
            self.filename = filename
            self.fileExtension = fileExtension
        }
        
        public init(_ url: URL) {
            self.filename = url.filename
            self.fileExtension = url.pathExtension
        }
    }

}

extension MediaKey_V22.MediaKey: StitchVersionedCodable {
    public init(previousInstance: MediaKey_V22.PreviousInstance) {
        self.init(filename: previousInstance.filename, fileExtension: previousInstance.fileExtension)
    }
}
