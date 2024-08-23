//
//  LayerInputKeyPathType_V24.swift
//
//
//  Created by Elliot Boschwitz on 8/14/24.
//

import Foundation

public enum LayerInputKeyPathType_V24: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V24
//    public typealias UnpackedPortType = UnpackedPortType_V24.UnpackedPortType
    
    public typealias PreviousInstance = LayerInputKeyPathType_V23.LayerInputKeyPathType
    // MARK: - endif
    
    public enum LayerInputKeyPathType: Hashable, Codable {
        case packed
        case unpacked(UnpackedPortType_V24.UnpackedPortType)
    }
}

extension LayerInputKeyPathType_V24.LayerInputKeyPathType: StitchVersionedCodable {
    public init(previousInstance: LayerInputKeyPathType_V24.PreviousInstance) {
        switch previousInstance {
        case .packed:
            self = .packed
        case .unpacked(let x):
            switch x {
            case .port0:
                self = .unpacked(.port0)
            case .port1:
                self = .unpacked(.port1)
            case .port2:
                self = .unpacked(.port2)
            case .port3:
                self = .unpacked(.port3)
            }
        }
    }
}
