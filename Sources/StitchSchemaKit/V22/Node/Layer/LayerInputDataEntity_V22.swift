//
//  LayerInputDataEntity.swift
//
//
//  Created by Elliot Boschwitz on 7/6/24.
//

import Foundation


public enum LayerInputDataEntity_V22: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V22
    public typealias PreviousInstance = LayerInputDataEntity_V21.LayerInputDataEntity
    public typealias NodeConnectionType = NodeConnectionType_V22.NodeConnectionType
    public typealias CanvasNodeEntity = CanvasNodeEntity_V22.CanvasNodeEntity
    // MARK: - end

    public struct LayerInputDataEntity: Equatable {
        public let inputPort: NodeConnectionType
        public var canvasItem: CanvasNodeEntity?
        
        public init(inputPort: NodeConnectionType, 
                    canvasItem: CanvasNodeEntity? = nil) {
            self.inputPort = inputPort
            self.canvasItem = canvasItem
        }
    }
}

extension LayerInputDataEntity_V22.LayerInputDataEntity: StitchVersionedCodable {
    public init(previousInstance: LayerInputDataEntity_V22.PreviousInstance) {
        self.init(
            inputPort: .init(previousInstance: previousInstance.inputPort),
            // TODO: fix canvas migration after v22, for v22 it needs to be nil to reset previous position port hack
            canvasItem: nil
        )
    }
    
    // TODO: don't forget about outputs
    // MARK: delete this after v22
    mutating func createConnectedCanvas(nodes: [NodeEntity_V22.NodeEntity]) {
        switch self.inputPort {
        case .upstreamConnection(let connection):
            guard let upstreamNode = nodes.first(where: { $0.id == connection.nodeId }),
                  let upstreamCanvas = upstreamNode.getCanvas() else {
                #if DEBUG
                fatalError()
                #endif
                
                // If failure use zero position
                self.canvasItem = .init(position: .zero,
                                        zIndex: .zero,
                                        parentGroupNodeId: nil)
                return
            }
            
            var layerInputCanvas = upstreamCanvas
            layerInputCanvas.zIndex += 1
            
            // Create staggered location
            layerInputCanvas.position = CGPoint(x: upstreamCanvas.position.x + 450,
                                                y: upstreamCanvas.position.y)
            
            // Change parent group if upstream connected node is output splitter
            switch upstreamNode.nodeTypeEntity {
            case .patch(let patchNode):
                if patchNode.splitterNode?.type == .output {
                    guard let groupNodeId = upstreamCanvas.parentGroupNodeId,
                          let groupNode = nodes.first(where: { $0.id == groupNodeId }),
                          let groupCanvas = groupNode.getCanvas() else {
                        #if DEBUG
                        fatalError()
                        #endif
                        self.canvasItem = layerInputCanvas
                        return
                    }
                    
                    layerInputCanvas.parentGroupNodeId = groupCanvas.parentGroupNodeId
                }
                
            default:
                break
            }
            
            self.canvasItem = layerInputCanvas
         
        default:
            return
        }
    }
}
