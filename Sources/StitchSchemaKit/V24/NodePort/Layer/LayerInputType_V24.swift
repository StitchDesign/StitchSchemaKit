//
//  LayerInputType_V24.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation


public enum LayerInputType_V24: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V24
    public typealias LayerInputPort = LayerInputPort_V24.LayerInputPort
    public typealias LayerInputKeyPathType = LayerInputKeyPathType_V24.LayerInputKeyPathType
    public typealias PreviousInstance = LayerInputType_V23.LayerInputType
    // MARK: - endif
    
    public struct LayerInputType: Hashable, Codable {
        public var layerInput: LayerInputPort
        public var portType: LayerInputKeyPathType
        
        public init(layerInput: LayerInputPort,
                    portType: LayerInputKeyPathType) {
            self.layerInput = layerInput
            self.portType = portType
        }
    }
}

extension LayerInputType_V24.LayerInputType: StitchVersionedCodable {
    public init(previousInstance: LayerInputType_V24.PreviousInstance) {
        self.layerInput = .init(previousInstance: previousInstance.layerInput)
        self.portType = .init(previousInstance: previousInstance.portType)
    }
}
