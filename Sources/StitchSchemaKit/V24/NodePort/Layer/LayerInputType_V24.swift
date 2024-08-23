//
//  LayerInputType_V24.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation


public enum LayerInputType_V24: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V24
    public typealias LayerInputPort = LayerInputPort_V24.LayerInputPort
    public typealias LayerInputKeyPathType = LayerInputKeyPathType_V24.LayerInputKeyPathType
    
    // TODO: change previous instance version
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
        // TODO: fix migration here
//        fatalError()
        self.layerInput = .init(previousInstance: previousInstance.layerInput)
        self.portType = .packed
    }
}
