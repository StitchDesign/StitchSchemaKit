//
//  NodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum NodeEntity_V6: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V6
    public typealias PreviousInstance = NodeEntity_V5.NodeEntity
    typealias StitchDocumentSchema = StitchDocument_V6
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V6.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V6.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V6.NodePortInputEntity]
    // MARK: - end

    public struct NodeEntity: Equatable {
        public let id: NodeId
        public var position: CGPoint
        public var zIndex: Double
        public var parentGroupNodeId: NodeId?
        public let patchNodeEntity: PatchNodeEntitySchema?
        public let layerNodeEntity: LayerNodeEntitySchema?
        public let isGroupNode: Bool
        public let title: String
        public let inputs: NodePortInputEntitySchemas
        
        public init(id: NodeId,
             position: CGPoint,
             zIndex: Double,
             parentGroupNodeId: NodeId?,
             patchNodeEntity: PatchNodeEntitySchema?,
             layerNodeEntity: LayerNodeEntitySchema?,
             isGroupNode: Bool,
             title: String,
             inputs: NodePortInputEntitySchemas) {
            self.id = id
            self.position = position
            self.zIndex = zIndex
            self.parentGroupNodeId = parentGroupNodeId
            self.patchNodeEntity = patchNodeEntity
            self.layerNodeEntity = layerNodeEntity
            self.isGroupNode = isGroupNode
            self.title = title
            self.inputs = inputs
        }
    }
}

extension NodeEntity_V6.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V6.PreviousInstance) {
        var migratedLayerEntity: LayerNodeEntity_V6.LayerNodeEntity?
        let migratedInputs = NodeEntity_V6.NodePortInputEntitySchemas(previousElements: previousInstance.inputs)
        
        // Layer nodes need to convert from port ID-based coordinates to keypaths
        if let prevLayerEntity = previousInstance.layerNodeEntity {
            var _migratedLayerEntity = NodeEntity_V6.LayerNodeEntitySchema(previousInstance: prevLayerEntity)
            let sortedLayerInputs = Self.layerInputs(for: prevLayerEntity.layer)
            
            sortedLayerInputs.enumerated().forEach { portId, layerInputType in
                if var rowData = migratedInputs[safe: portId] {
                    // Convert coordinate to keypath type
                    rowData.id.portType = .keyPath(layerInputType)
                    
                    // Set either values or connection
                    if let upstreamCoordinate = rowData.upstreamOutputCoordinate {
                        _migratedLayerEntity[keyPath: layerInputType.schemaPortKeyPath] = .upstreamConnection(upstreamCoordinate)
                    } else {
                        _migratedLayerEntity[keyPath: layerInputType.schemaPortKeyPath] = .values(rowData.values ?? [])
                    }
                }
            }
            
            migratedLayerEntity = _migratedLayerEntity
        }
        
        self.init(
            id: previousInstance.id,
            position: previousInstance.position,
            zIndex: previousInstance.zIndex,
            parentGroupNodeId: previousInstance.parentGroupNodeId,
            patchNodeEntity:
                NodeEntity_V6.PatchNodeEntitySchema(previousInstance: previousInstance.patchNodeEntity),
            layerNodeEntity: migratedLayerEntity,
            isGroupNode: previousInstance.isGroupNode,
            title: previousInstance.title,
            inputs: migratedLayerEntity == nil ? migratedInputs : [] // layers encode inputs in layer data
        )
    }
    
    // MARK: - helpers for v6, remove for later versions
    private static func layerInputs(for layer: Layer_V5.Layer) -> [LayerInputType_V6.LayerInputType] {
        switch layer {
        case .text:
            return [
                .text,
                .color,
                .position,
                .rotationX,
                .rotationY,
                .rotationZ,
                .size,
                .opacity,
                .scale,
                .anchoring,
                .zIndex,
                .fontSize,
                .textAlignment,
                .verticalAlignment,
                .textDecoration,
                .textFont,
                .blurRadius,
                .blendMode,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation,
                .pivot
            ]
        case .oval:
            return [
                .color,
                .position,
                .rotationX,
                .rotationY,
                .rotationZ,
                .size,
                .opacity,
                .scale,
                .anchoring,
                .zIndex,
                .strokePosition,
                .strokeWidth,
                .strokeColor,
                .blurRadius,
                .blendMode,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation,
                .pivot
            ]
        case .rectangle:
            return [
                .color,
                .position,
                .rotationX,
                .rotationY,
                .rotationZ,
                .size,
                .opacity,
                .scale,
                .anchoring,
                .zIndex,
                .strokePosition,
                .strokeWidth,
                .strokeColor,
                .cornerRadius,
                .blurRadius,
                .blendMode,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation,
                .pivot
            ]
        case .image:
            return [
                .image,
                .position,
                .rotationX,
                .rotationY,
                .rotationZ,
                .size,
                .opacity,
                .fitStyle,
                .scale,
                .anchoring,
                .zIndex,
                .clipped,
                .blur,
                .blendMode,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation
            ]
        case .group:
            return [
                .position,
                .size,
                .zIndex,
                .isClipped,
                .scale,
                .anchoring,
                .rotationX,
                .rotationY,
                .rotationZ,
                .opacity,
                .pivot,
                .orientation,
                .padding,
                .blur,
                .blendMode,
                .backgroundColor,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation
            ]
        case .video:
            return [
                .video,
                .position,
                .rotationX,
                .rotationY,
                .rotationZ,
                .size,
                .opacity,
                .fitStyle,
                .scale,
                .anchoring,
                .zIndex,
                .clipped,
                .blur,
                .blendMode,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation
            ]
        case .model3D:
            return [
                .model3D,
                .position,
                .rotationX,
                .rotationY,
                .rotationZ,
                .size,
                .opacity,
                .scale,
                .anchoring,
                .zIndex,
                .blurRadius,
                .blendMode,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation
            ]
        case .realityView:
            return [
                .allAnchors,
                .cameraDirection,
                .position,
                .rotationX,
                .rotationY,
                .rotationZ,
                .size,
                .opacity,
                .scale,
                .anchoring,
                .zIndex,
                .isCameraEnabled,
                .isShadowsEnabled,
                .blurRadius,
                .blendMode,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation
            ]
        case .shape:
            return [
                .shape,
                .color,
                .position,
                .rotationX,
                .rotationY,
                .rotationZ,
                .size,
                .opacity,
                .scale,
                .anchoring,
                .zIndex,
                .strokePosition,
                .strokeWidth,
                .strokeColor,
                .strokeColor,
                .coordinateSystem,
                .blurRadius,
                .blendMode,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation,
                .pivot
            ]
        case .colorFill:
            return [
                .enabled,
                .color,
                .opacity,
                .zIndex,
                .blurRadius,
                .blendMode,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation
            ]
        case .hitArea:
            return [
                .enabled,
                .position,
                .size,
                .anchoring,
                .zIndex,
                .setupMode
            ]
        case .canvasSketch:
            return [
                .canvasLineColor,
                .canvasLineWidth,
                .canvasPosition,
                .position,
                .rotationX,
                .rotationY,
                .rotationZ,
                .size,
                .opacity,
                .scale,
                .anchoring,
                .zIndex,
                .blur,
                .blendMode,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation
            ]
        case .textField:
            return [
                .text,
                .color,
                .position,
                .rotationX,
                .rotationY,
                .rotationZ,
                .size,
                .opacity,
                .scale,
                .anchoring,
                .zIndex,
                .fontSize,
                .textAlignment,
                .verticalAlignment,
                .textDecoration,
                .textFont,
                .blurRadius,
                .blendMode,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation,
                .pivot
            ]
        case .map:
            return [
                .mapType,
                .mapLatLong,
                .mapSpan,
                .position,
                .rotationX,
                .rotationY,
                .rotationZ,
                .size,
                .opacity,
                .scale,
                .anchoring,
                .zIndex,
                .blurRadius,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation
            ]
        case .progressIndicator:
            return [
                .isAnimating,
                .progressIndicatorStyle,
                .progress,
                .position,
                .opacity,
                .scale,
                .anchoring,
                .zIndex,
                .blurRadius,
                .blendMode,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation
            ]
        case .switchLayer:
            return [
                .isSwitchToggled,
                .position,
                .rotationX,
                .rotationY,
                .rotationZ,
                .opacity,
                .anchoring,
                .zIndex,
                .blurRadius,
                .blendMode,
                .brightness,
                .colorInvert,
                .contrast,
                .hueRotation,
                .saturation
            ]
        }
    }
}
