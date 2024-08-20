//
//  LayerInputType_V23.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation


public enum LayerInputType_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V23
    public typealias LayerInputPort = LayerInputPort_V23.LayerInputPort
    public typealias LayerInputKeyPathType = LayerInputKeyPathType_V23.LayerInputKeyPathType
    
    // TODO: change previous instance version
    public typealias PreviousInstance = Self.LayerInputType
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

extension LayerInputType_V23.LayerInputType: StitchVersionedCodable {
    public init(previousInstance: LayerInputType_V23.PreviousInstance) {
        // TODO: fix migration here
        fatalError()
    }
}
