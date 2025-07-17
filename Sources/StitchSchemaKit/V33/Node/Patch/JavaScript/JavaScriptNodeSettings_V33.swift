//
//  JavaScriptNodeSettings_V33.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 5/26/25.
//

import Foundation
import SwiftUI

public enum JavaScriptNodeSettings_V33: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V33
    public typealias PreviousInstance = JavaScriptNodeSettings_V32.JavaScriptNodeSettings
    public typealias JavaScriptPortDefinition = JavaScriptPortDefinition_V33.JavaScriptPortDefinition
    // MARK: - end

    public struct JavaScriptNodeSettings: Hashable {
        public let suggestedTitle: String
        public let script: String
        public let inputDefinitions: [JavaScriptPortDefinition]
        public let outputDefinitions: [JavaScriptPortDefinition]
        
        public init(suggestedTitle: String,
                    script: String,
                    inputDefinitions: [JavaScriptPortDefinition],
                    outputDefinitions: [JavaScriptPortDefinition]) {
            self.suggestedTitle = suggestedTitle
            self.script = script
            self.inputDefinitions = inputDefinitions
            self.outputDefinitions = outputDefinitions
        }
    }
}

extension JavaScriptNodeSettings_V33.JavaScriptNodeSettings: StitchVersionedCodable {
    public init(previousInstance: JavaScriptNodeSettings_V33.PreviousInstance) {
        self.suggestedTitle = previousInstance.suggestedTitle
        self.script = previousInstance.script
        self.inputDefinitions = .init(previousElements: previousInstance.inputDefinitions)
        self.outputDefinitions = .init(previousElements: previousInstance.outputDefinitions)
    }
}
