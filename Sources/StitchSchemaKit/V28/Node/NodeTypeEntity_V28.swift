//
//  NodeTypeEntity_V28.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum NodeTypeEntity_V28: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V28
    public typealias PreviousInstance = NodeTypeEntity_V27.NodeTypeEntity
    // MARK: - end

    public enum NodeTypeEntity: Hashable {
        case patch(PatchNodeEntity_V28.PatchNodeEntity)
        case layer(LayerNodeEntity_V28.LayerNodeEntity)
        case group(CanvasNodeEntity_V28.CanvasNodeEntity)
        case component(ComponentEntity_V28.ComponentEntity)
    }
}

extension NodeTypeEntity_V28.NodeTypeEntity {
    public var kind: NodeKind_V28.NodeKind {
        switch self {
        case .patch(let patchNode):
            return .patch(patchNode.patch)
        case .layer(let layerNode):
            return .layer(layerNode.layer)
        case .group, .component:
            return .group
        }
    }
    
    /// Helper which modifies all discovered input data.
    func inputsModifier(callback: @escaping (NodeConnectionType_V28.NodeConnectionType) -> NodeConnectionType_V28.NodeConnectionType) -> Self {
        switch self {
        case .patch(var patchNodeEntity):
            patchNodeEntity.inputs = patchNodeEntity.inputs
                .map { inputData in
                    var inputData = inputData
                    inputData.portData = callback(inputData.portData)
                    return inputData
                }
            
            return .patch(patchNodeEntity)
        
        case .layer(var layerNodeEntity):
            let allPorts = LayerInputPort_V28.LayerInputPort.allCases
            
            for port in allPorts {
                var inputData = layerNodeEntity[keyPath: port.schemaPortKeyPath]
                
                inputData.packedData.inputPort = callback(inputData.packedData.inputPort)
                inputData.unpackedData = inputData.unpackedData.map { unpackedData in
                    var unpackedData = unpackedData
                    unpackedData.inputPort = callback(unpackedData.inputPort)
                    return unpackedData
                }
                
                layerNodeEntity[keyPath: port.schemaPortKeyPath] = inputData
            }
            
            return .layer(layerNodeEntity)
        
        case .component(var componentEntity):
            componentEntity.inputs = componentEntity.inputs.map {
                callback($0)
            }
            
            return .component(componentEntity)
            
        case .group:
            // Input data not held here
            return self
        }
    }
}

extension NodeTypeEntity_V28.NodeTypeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeTypeEntity_V28.PreviousInstance) {
        switch previousInstance {
        case .patch(let patchNodeEntity):
            self = .patch(.init(previousInstance: patchNodeEntity))
        case .layer(let layerNodeEntity):
            self = .layer(.init(previousInstance: layerNodeEntity))
        case .group(let canvasNodeEntity):
            self = .group(.init(previousInstance: canvasNodeEntity))
        case .component(let componentEntity):
            self = .component(.init(previousInstance: componentEntity))
        }
    }
}
