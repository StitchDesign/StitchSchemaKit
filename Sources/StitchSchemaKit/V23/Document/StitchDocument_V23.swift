//
//  StitchDocument.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum StitchDocument_V23: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V23
    public typealias PreviousInstance = StitchDocument_V22.StitchDocument
    public typealias NodeEntitySchemas = [NodeEntity_V23.NodeEntity]
    public typealias CommentBoxes = [CommentBoxData_V23.CommentBoxData]
    public typealias PreviewSize = PreviewSize_V23.PreviewSize
    public typealias SidebarLayerDataList = [SidebarLayerData_V23.SidebarLayerData]
    public typealias CameraSettings = CameraSettings_V23.CameraSettings
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

extension StitchDocument_V23.StitchDocument {
    public init(previousInstance: StitchDocument_V23.PreviousInstance) {
        
        let migratedNodes = StitchDocument_V23.NodeEntitySchemas(previousElements: previousInstance.nodes)
        let map = migratedNodes.reduce(into: [UUID : NodeEntity_V23.NodeEntity]()) { partialResult, node in
            partialResult[node.id] = node
        }
        
        let newMigratedNodes = migratedNodes.map { node in
            var node = node
            
            for n in node.inputs {
                guard let coordinate = n.getUpstreamConnection,
                      coordinate.portType == .portIndex(9),
                      let upstreamNode = map[coordinate.nodeId],
                      upstreamNode.isUnpackTransform else {
                    continue
                }
            }
            
        }
        
        self.init(
            projectId: previousInstance.projectId,
            name: previousInstance.name,
            previewWindowSize: previousInstance.previewWindowSize,
            previewSizeDevice: PreviewSize_V23.PreviewSize(previousInstance: previousInstance.previewSizeDevice),
            previewWindowBackgroundColor: previousInstance.previewWindowBackgroundColor,
            localPosition: previousInstance.localPosition,
            zoomData: previousInstance.zoomData,
            nodes: StitchDocument_V23.NodeEntitySchemas(previousElements: previousInstance.nodes),
            orderedSidebarLayers: StitchDocument_V23.SidebarLayerDataList(previousElements: previousInstance.orderedSidebarLayers),
            commentBoxes: StitchDocument_V23.CommentBoxes(previousElements: previousInstance.commentBoxes),
            cameraSettings: StitchDocument_V23.CameraSettings(previousInstance: previousInstance.cameraSettings)
        )
    }
    
}



extension NodeEntity_V23.NodeEntity {
    var inputs: [NodeConnectionType_V23.NodeConnectionType] {
        switch self.nodeTypeEntity {
            
        case .patch(let value):
            return value.inputs.map { $0.portData }
        case .layer(let value):
            return value.getAllInputPorts()
        case .group(let value):
            return []
        }
    }
    
    var isUnpackTransform: Bool {
        switch self.nodeTypeEntity {
            
        case .patch(let value):
            return value.patch == .transformUnpack
        default:
            return false
        }
    }
}


extension LayerNodeEntity_V23.LayerNodeEntity {
    func getAllInputPorts() -> [NodeConnectionType_V23.NodeConnectionType] {
        return [
            positionPort.packedData.inputPort,
            sizePort.packedData.inputPort,
            scalePort.packedData.inputPort,
            anchoringPort.packedData.inputPort,
            opacityPort.packedData.inputPort,
            zIndexPort.packedData.inputPort,
            masksPort.packedData.inputPort,
            colorPort.packedData.inputPort,
            
            rotationXPort.packedData.inputPort,
            rotationYPort.packedData.inputPort,
            rotationZPort.packedData.inputPort,
            
            lineColorPort.packedData.inputPort,
            lineWidthPort.packedData.inputPort,
            blurPort.packedData.inputPort,
            blendModePort.packedData.inputPort,
            brightnessPort.packedData.inputPort,
            colorInvertPort.packedData.inputPort,
            contrastPort.packedData.inputPort,
            hueRotationPort.packedData.inputPort,
            saturationPort.packedData.inputPort,
            pivotPort.packedData.inputPort,
            enabledPort.packedData.inputPort,
            blurRadiusPort.packedData.inputPort,
            backgroundColorPort.packedData.inputPort,
            isClippedPort.packedData.inputPort,
            orientationPort.packedData.inputPort,
            paddingPort.packedData.inputPort,
            
            setupModePort.packedData.inputPort,
            allAnchorsPort.packedData.inputPort,
            cameraDirectionPort.packedData.inputPort,
            isCameraEnabledPort.packedData.inputPort,
            isShadowsEnabledPort.packedData.inputPort,
            
            shapePort.packedData.inputPort,
            strokePositionPort.packedData.inputPort,
            strokeWidthPort.packedData.inputPort,
            strokeColorPort.packedData.inputPort,
            strokeStartPort.packedData.inputPort,
            strokeEndPort.packedData.inputPort,
            strokeLineCapPort.packedData.inputPort,
            strokeLineJoinPort.packedData.inputPort,
            coordinateSystemPort.packedData.inputPort,
            
            cornerRadiusPort.packedData.inputPort,
            canvasLineColorPort.packedData.inputPort,
            canvasLineWidthPort.packedData.inputPort,
            canvasPositionPort.packedData.inputPort,
            textPort.packedData.inputPort,
            fontSizePort.packedData.inputPort,
            
            textAlignmentPort.packedData.inputPort,
            verticalAlignmentPort.packedData.inputPort,
            textDecorationPort.packedData.inputPort,
            textFontPort.packedData.inputPort,
            
            imagePort.packedData.inputPort,
            videoPort.packedData.inputPort,
            fitStylePort.packedData.inputPort,
            clippedPort.packedData.inputPort,
            isAnimatingPort.packedData.inputPort,
            progressIndicatorStylePort.packedData.inputPort,
            progressPort.packedData.inputPort,
            model3DPort.packedData.inputPort,
            mapTypePort.packedData.inputPort,
            mapLatLongPort.packedData.inputPort,
            mapSpanPort.packedData.inputPort,
            isSwitchToggledPort.packedData.inputPort,
            placeholderTextPort.packedData.inputPort,
            startColorPort.packedData.inputPort,
            endColorPort.packedData.inputPort,
            startAnchorPort.packedData.inputPort,
            endAnchorPort.packedData.inputPort,
            centerAnchorPort.packedData.inputPort,
            startAnglePort.packedData.inputPort,
            endAnglePort.packedData.inputPort,
            startRadiusPort.packedData.inputPort,
            endRadiusPort.packedData.inputPort,
            
            shadowColorPort.packedData.inputPort,
            shadowOpacityPort.packedData.inputPort,
            shadowRadiusPort.packedData.inputPort,
            shadowOffsetPort.packedData.inputPort,
            
            sfSymbolPort.packedData.inputPort,
            
            videoURLPort.packedData.inputPort,
            volumePort.packedData.inputPort,
            
            spacingBetweenGridColumnsPort.packedData.inputPort,
            spacingBetweenGridRowsPort.packedData.inputPort,
            itemAlignmentWithinGridCellPort.packedData.inputPort,
            
            sizingScenarioPort.packedData.inputPort,
            
            widthAxisPort.packedData.inputPort,
            heightAxisPort.packedData.inputPort,
            contentModePort.packedData.inputPort,
            minSizePort.packedData.inputPort,
            maxSizePort.packedData.inputPort,
            spacingPort.packedData.inputPort
        ]
    }
}
