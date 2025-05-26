//
//  JavaScriptNodeSettings_V32.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 5/26/25.
//

import Foundation
import SwiftUI

public enum JavaScriptNodeSettings_V32: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V32
    public typealias PreviousInstance = Self.JavaScriptNodeSettings
    public typealias JavaScriptPortDefinition = JavaScriptPortDefinition_V32.JavaScriptPortDefinition
    // MARK: - end

    public struct JavaScriptNodeSettings: Hashable {
        public let script: String
        public let inputDefinitions: [JavaScriptPortDefinition]
        public let outputDefinitions: [JavaScriptPortDefinition]
        
        public init(script: String,
                    inputDefinitions: [JavaScriptPortDefinition],
                    outputDefinitions: [JavaScriptPortDefinition]) {
            self.script = script
            self.inputDefinitions = inputDefinitions
            self.outputDefinitions = outputDefinitions
        }
    }
}

extension JavaScriptNodeSettings_V32.JavaScriptNodeSettings: StitchVersionedCodable {
    public init(previousInstance: JavaScriptNodeSettings_V32.PreviousInstance) {
        // TODO: define on v33
        fatalError()
    }
}
