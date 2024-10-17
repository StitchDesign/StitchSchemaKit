//
//  LayerInputType_V26.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation


public enum LayerInputType_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias LayerInputPort = LayerInputPort_V26.LayerInputPort
    public typealias LayerInputKeyPathType = LayerInputKeyPathType_V26.LayerInputKeyPathType
    public typealias PreviousInstance = LayerInputType_V25.LayerInputType
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

extension LayerInputType_V26.LayerInputType: StitchVersionedCodable {
    public init(previousInstance: LayerInputType_V26.PreviousInstance) {
        self.layerInput = .init(previousInstance: previousInstance.layerInput)
        self.portType = .init(previousInstance: previousInstance.portType)
    }
}
