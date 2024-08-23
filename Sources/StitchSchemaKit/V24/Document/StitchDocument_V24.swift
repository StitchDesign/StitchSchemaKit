//
//  StitchDocument.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum StitchDocument_V24: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V24
    public typealias PreviousInstance = StitchDocument_V23.StitchDocument
    public typealias NodeEntitySchemas = [NodeEntity_V24.NodeEntity]
    public typealias CommentBoxes = [CommentBoxData_V24.CommentBoxData]
    public typealias PreviewSize = PreviewSize_V24.PreviewSize
    public typealias SidebarLayerDataList = [SidebarLayerData_V24.SidebarLayerData]
    public typealias CameraSettings = CameraSettings_V24.CameraSettings
    // MARK: - end

    // TODO: transferable
    public struct StitchDocument: StitchVersionedCodable, Equatable {
        public var projectId: ProjectId
        public var name: String

        // Preview window
        public let previewWindowSize: CGSize
        public let previewSizeDevice: PreviewSize
        public let previewWindowBackgroundColor: Color

        // Graph positioning data
        public let localPosition: CGPoint
        public let zoomData: CGFloat

        // Node data
        public var nodes: NodeEntitySchemas
        public var orderedSidebarLayers: SidebarLayerDataList
        public let commentBoxes: CommentBoxes

        public let cameraSettings: CameraSettings

        public init(projectId: ProjectId,
             name: String,
             previewWindowSize: CGSize,
             previewSizeDevice: PreviewSize,
             previewWindowBackgroundColor: Color,
             localPosition: CGPoint,
             zoomData: CGFloat,
             nodes: NodeEntitySchemas,
             orderedSidebarLayers: SidebarLayerDataList,
             commentBoxes: CommentBoxes,
             cameraSettings: CameraSettings) {
            self.projectId = projectId
            self.name = name
            self.previewWindowSize = previewWindowSize
            self.previewSizeDevice = previewSizeDevice
            self.previewWindowBackgroundColor = previewWindowBackgroundColor
            self.localPosition = localPosition
            self.zoomData = zoomData
            self.nodes = nodes
            self.orderedSidebarLayers = orderedSidebarLayers
            self.commentBoxes = commentBoxes
            self.cameraSettings = cameraSettings
        }
        
        // MARK: remove `transferRepresentation` from older `StitchDocument` versions
//        static var transferRepresentation: some TransferRepresentation {
//            FileRepresentation(contentType: .stitchDocument,
//                               exporting: Self.exportDocument,
//                               importing: Self.importDocument)
//        }
    }
}

extension StitchDocument_V24.StitchDocument {
    public init(previousInstance: StitchDocument_V24.PreviousInstance) {
        
        let migratedNodes = StitchDocument_V24.NodeEntitySchemas(previousElements: previousInstance.nodes)
        let map = migratedNodes.reduce(into: [UUID : NodeEntity_V24.NodeEntity]()) { partialResult, node in
            partialResult[node.id] = node
        }
        
        let newMigratedNodes = migratedNodes.map { node in
            var node = node
            
            node.inputsMutator { input in
                guard let coordinate = input.getUpstreamConnection else {
                    return input
                }
                
                guard coordinate.portType == .portIndex(9) else {
                    return input
                }
                    
                guard let upstreamNode = map[coordinate.nodeId] else {
                    return input
                }
                
                guard upstreamNode.isUnpackTransform else {
                    return input
                }
                
                return .values([.number(.zero)])
            }
            return node
        }
        
        self.init(
            projectId: previousInstance.projectId,
            name: previousInstance.name,
            previewWindowSize: previousInstance.previewWindowSize,
            previewSizeDevice: PreviewSize_V24.PreviewSize(previousInstance: previousInstance.previewSizeDevice),
            previewWindowBackgroundColor: previousInstance.previewWindowBackgroundColor,
            localPosition: previousInstance.localPosition,
            zoomData: previousInstance.zoomData,
            nodes: newMigratedNodes,
            orderedSidebarLayers: StitchDocument_V24.SidebarLayerDataList(previousElements: previousInstance.orderedSidebarLayers),
            commentBoxes: StitchDocument_V24.CommentBoxes(previousElements: previousInstance.commentBoxes),
            cameraSettings: StitchDocument_V24.CameraSettings(previousInstance: previousInstance.cameraSettings)
        )
    }
    
}



extension NodeEntity_V24.NodeEntity {
    var patchNode: PatchNodeEntity_V24.PatchNodeEntity? {
        switch self.nodeTypeEntity {
        case .patch(let patchNode):
            return patchNode
        default:
            return nil
        }
    }
    
    mutating func inputsMutator(_ callback: (NodeConnectionType_V24.NodeConnectionType) -> NodeConnectionType_V24.NodeConnectionType) {
        switch self.nodeTypeEntity {
            
        case .patch(var value):
            value.inputs = value.inputs.map { input in
                var input = input
                input.portData = callback(input.portData)
                return input
            }
            
            self.nodeTypeEntity = .patch(value)
        case .layer(var value):
            value.inputsMutator(callback)
            self.nodeTypeEntity = .layer(value)
        case .group(let value):
            return
        }
    }
    
    var isUnpackTransform: Bool {
        switch self.nodeTypeEntity {
            
        case .patch(let value):
            return value.patch == .unpack
        default:
            return false
        }
    }
}


extension LayerNodeEntity_V24.LayerNodeEntity {
    mutating func inputsMutator(_ callback: (NodeConnectionType_V24.NodeConnectionType) -> NodeConnectionType_V24.NodeConnectionType) {
        positionPort.packedData.inputPort = callback(positionPort.packedData.inputPort)
        sizePort.packedData.inputPort = callback(sizePort.packedData.inputPort)
        scalePort.packedData.inputPort = callback(scalePort.packedData.inputPort)
        anchoringPort.packedData.inputPort = callback(anchoringPort.packedData.inputPort)
        opacityPort.packedData.inputPort = callback(opacityPort.packedData.inputPort)
        zIndexPort.packedData.inputPort = callback(zIndexPort.packedData.inputPort)
        masksPort.packedData.inputPort = callback(masksPort.packedData.inputPort)
        colorPort.packedData.inputPort = callback(colorPort.packedData.inputPort)
        
        rotationXPort.packedData.inputPort = callback(rotationXPort.packedData.inputPort)
        rotationYPort.packedData.inputPort = callback(rotationYPort.packedData.inputPort)
        rotationZPort.packedData.inputPort = callback(rotationZPort.packedData.inputPort)
        
        lineColorPort.packedData.inputPort = callback(lineColorPort.packedData.inputPort)
        lineWidthPort.packedData.inputPort = callback(lineWidthPort.packedData.inputPort)
        blurPort.packedData.inputPort = callback(blurPort.packedData.inputPort)
        blendModePort.packedData.inputPort = callback(blendModePort.packedData.inputPort)
        brightnessPort.packedData.inputPort = callback(brightnessPort.packedData.inputPort)
        colorInvertPort.packedData.inputPort = callback(colorInvertPort.packedData.inputPort)
        contrastPort.packedData.inputPort = callback(contrastPort.packedData.inputPort)
        hueRotationPort.packedData.inputPort = callback(hueRotationPort.packedData.inputPort)
        saturationPort.packedData.inputPort = callback(saturationPort.packedData.inputPort)
        pivotPort.packedData.inputPort = callback(pivotPort.packedData.inputPort)
        enabledPort.packedData.inputPort = callback(enabledPort.packedData.inputPort)
        blurRadiusPort.packedData.inputPort = callback(blurRadiusPort.packedData.inputPort)
        backgroundColorPort.packedData.inputPort = callback(backgroundColorPort.packedData.inputPort)
        isClippedPort.packedData.inputPort = callback(isClippedPort.packedData.inputPort)
        orientationPort.packedData.inputPort = callback(orientationPort.packedData.inputPort)
        paddingPort.packedData.inputPort = callback(paddingPort.packedData.inputPort)
        
        setupModePort.packedData.inputPort = callback(setupModePort.packedData.inputPort)
        allAnchorsPort.packedData.inputPort = callback(allAnchorsPort.packedData.inputPort)
        cameraDirectionPort.packedData.inputPort = callback(cameraDirectionPort.packedData.inputPort)
        isCameraEnabledPort.packedData.inputPort = callback(isCameraEnabledPort.packedData.inputPort)
        isShadowsEnabledPort.packedData.inputPort = callback(isShadowsEnabledPort.packedData.inputPort)
        
        shapePort.packedData.inputPort = callback(shapePort.packedData.inputPort)
        strokePositionPort.packedData.inputPort = callback(strokePositionPort.packedData.inputPort)
        strokeWidthPort.packedData.inputPort = callback(strokeWidthPort.packedData.inputPort)
        strokeColorPort.packedData.inputPort = callback(strokeColorPort.packedData.inputPort)
        strokeStartPort.packedData.inputPort = callback(strokeStartPort.packedData.inputPort)
        strokeEndPort.packedData.inputPort = callback(strokeEndPort.packedData.inputPort)
        strokeLineCapPort.packedData.inputPort = callback(strokeLineCapPort.packedData.inputPort)
        strokeLineJoinPort.packedData.inputPort = callback(strokeLineJoinPort.packedData.inputPort)
        coordinateSystemPort.packedData.inputPort = callback(coordinateSystemPort.packedData.inputPort)
        
        cornerRadiusPort.packedData.inputPort = callback(cornerRadiusPort.packedData.inputPort)
        canvasLineColorPort.packedData.inputPort = callback(canvasLineColorPort.packedData.inputPort)
        canvasLineWidthPort.packedData.inputPort = callback(canvasLineWidthPort.packedData.inputPort)
        canvasPositionPort.packedData.inputPort = callback(canvasPositionPort.packedData.inputPort)
        textPort.packedData.inputPort = callback(textPort.packedData.inputPort)
        fontSizePort.packedData.inputPort = callback(fontSizePort.packedData.inputPort)
        
        textAlignmentPort.packedData.inputPort = callback(textAlignmentPort.packedData.inputPort)
        verticalAlignmentPort.packedData.inputPort = callback(verticalAlignmentPort.packedData.inputPort)
        textDecorationPort.packedData.inputPort = callback(textDecorationPort.packedData.inputPort)
        textFontPort.packedData.inputPort = callback(textFontPort.packedData.inputPort)
        
        imagePort.packedData.inputPort = callback(imagePort.packedData.inputPort)
        videoPort.packedData.inputPort = callback(videoPort.packedData.inputPort)
        fitStylePort.packedData.inputPort = callback(fitStylePort.packedData.inputPort)
        clippedPort.packedData.inputPort = callback(clippedPort.packedData.inputPort)
        isAnimatingPort.packedData.inputPort = callback(isAnimatingPort.packedData.inputPort)
        progressIndicatorStylePort.packedData.inputPort = callback(progressIndicatorStylePort.packedData.inputPort)
        progressPort.packedData.inputPort = callback(progressPort.packedData.inputPort)
        model3DPort.packedData.inputPort = callback(model3DPort.packedData.inputPort)
        mapTypePort.packedData.inputPort = callback(mapTypePort.packedData.inputPort)
        mapLatLongPort.packedData.inputPort = callback(mapLatLongPort.packedData.inputPort)
        mapSpanPort.packedData.inputPort = callback(mapSpanPort.packedData.inputPort)
        isSwitchToggledPort.packedData.inputPort = callback(isSwitchToggledPort.packedData.inputPort)
        placeholderTextPort.packedData.inputPort = callback(placeholderTextPort.packedData.inputPort)
        startColorPort.packedData.inputPort = callback(startColorPort.packedData.inputPort)
        endColorPort.packedData.inputPort = callback(endColorPort.packedData.inputPort)
        startAnchorPort.packedData.inputPort = callback(startAnchorPort.packedData.inputPort)
        endAnchorPort.packedData.inputPort = callback(endAnchorPort.packedData.inputPort)
        centerAnchorPort.packedData.inputPort = callback(centerAnchorPort.packedData.inputPort)
        startAnglePort.packedData.inputPort = callback(startAnglePort.packedData.inputPort)
        endAnglePort.packedData.inputPort = callback(endAnglePort.packedData.inputPort)
        startRadiusPort.packedData.inputPort = callback(startRadiusPort.packedData.inputPort)
        endRadiusPort.packedData.inputPort = callback(endRadiusPort.packedData.inputPort)
        
        shadowColorPort.packedData.inputPort = callback(shadowColorPort.packedData.inputPort)
        shadowOpacityPort.packedData.inputPort = callback(shadowOpacityPort.packedData.inputPort)
        shadowRadiusPort.packedData.inputPort = callback(shadowRadiusPort.packedData.inputPort)
        shadowOffsetPort.packedData.inputPort = callback(shadowOffsetPort.packedData.inputPort)
        
        sfSymbolPort.packedData.inputPort = callback(sfSymbolPort.packedData.inputPort)
        
        videoURLPort.packedData.inputPort = callback(videoURLPort.packedData.inputPort)
        volumePort.packedData.inputPort = callback(volumePort.packedData.inputPort)
        
        spacingBetweenGridColumnsPort.packedData.inputPort = callback(spacingBetweenGridColumnsPort.packedData.inputPort)
        spacingBetweenGridRowsPort.packedData.inputPort = callback(spacingBetweenGridRowsPort.packedData.inputPort)
        itemAlignmentWithinGridCellPort.packedData.inputPort = callback(itemAlignmentWithinGridCellPort.packedData.inputPort)
        
        sizingScenarioPort.packedData.inputPort = callback(sizingScenarioPort.packedData.inputPort)
        
        widthAxisPort.packedData.inputPort = callback(widthAxisPort.packedData.inputPort)
        heightAxisPort.packedData.inputPort = callback(heightAxisPort.packedData.inputPort)
        contentModePort.packedData.inputPort = callback(contentModePort.packedData.inputPort)
        minSizePort.packedData.inputPort = callback(minSizePort.packedData.inputPort)
        maxSizePort.packedData.inputPort = callback(maxSizePort.packedData.inputPort)
        spacingPort.packedData.inputPort = callback(spacingPort.packedData.inputPort)
    }
}
