//
//  NodeTypeEntity_V30.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum NodeTypeEntity_V30: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V30
    public typealias PreviousInstance = NodeTypeEntity_V29.NodeTypeEntity
    // MARK: - end

    public enum NodeTypeEntity: Hashable {
        case patch(PatchNodeEntity_V30.PatchNodeEntity)
        case layer(LayerNodeEntity_V30.LayerNodeEntity)
        case group(CanvasNodeEntity_V30.CanvasNodeEntity)
        case component(ComponentEntity_V30.ComponentEntity)
    }
}

extension NodeTypeEntity_V30.NodeTypeEntity {
    public var kind: NodeKind_V30.NodeKind {
        switch self {
        case .patch(let patchNode):
            return .patch(patchNode.patch)
        case .layer(let layerNode):
            return .layer(layerNode.layer)
        case .group, .component:
            return .group
        }
    }
    
    var patchNodeEntity: PatchNodeEntity_V30.PatchNodeEntity? {
        switch self {
        case .patch(let patchNodeEntity):
            return patchNodeEntity
        default:
            return nil
        }
    }
    
    /// Helper which modifies all discovered input data.
    func inputsModifier(callback: @escaping (NodeConnectionType_V30.NodeConnectionType) -> NodeConnectionType_V30.NodeConnectionType) -> Self {
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
            let allPorts = LayerInputPort_V30.LayerInputPort.allCases
            
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

extension NodeTypeEntity_V30.NodeTypeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeTypeEntity_V30.PreviousInstance) {
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
