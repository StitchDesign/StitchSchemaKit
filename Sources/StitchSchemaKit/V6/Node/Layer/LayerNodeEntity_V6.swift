//
//  LayerNodeEntity_V6.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/29/23.
//

import SwiftUI

public enum LayerNodeEntity_V6: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V6
    public typealias PreviousInstance = LayerNodeEntity_V5.LayerNodeEntity
    public typealias NodeEntitySchema = NodeEntity_V6
    public typealias Layer = Layer_V6.Layer
    public typealias NodeConnectionType = NodeConnectionType_V6.NodeConnectionType
    // MARK: - end

    public struct LayerNodeEntity: Equatable {
        public  let id: NodeId
        public let layer: Layer
        
        // Value data
        public let positionPort: NodeConnectionType
        public let sizePort: NodeConnectionType
        public let scalePort: NodeConnectionType
        public let anchoringPort: NodeConnectionType
        public let opacityPort: NodeConnectionType
        public let zIndexPort: NodeConnectionType
        public let colorPort: NodeConnectionType
        public let rotationXPort: NodeConnectionType
        public let rotationYPort: NodeConnectionType
        public let rotationZPort: NodeConnectionType
        public let lineColorPort: NodeConnectionType
        public let lineWidthPort: NodeConnectionType
        public let blurPort: NodeConnectionType
        public let blendModePort: NodeConnectionType
        public let brightnessPort: NodeConnectionType
        public let colorInvertPort: NodeConnectionType
        public let contrastPort: NodeConnectionType
        public let hueRotationPort: NodeConnectionType
        public let saturationPort: NodeConnectionType
        public let pivotPort: NodeConnectionType
        public let enabledPort: NodeConnectionType
        public let blurRadiusPort: NodeConnectionType
        public let backgroundColorPort: NodeConnectionType
        public let isClippedPort: NodeConnectionType
        public let orientationPort: NodeConnectionType
        public let paddingPort: NodeConnectionType
        public let setupModePort: NodeConnectionType
        public let allAnchorsPort: NodeConnectionType
        public let cameraDirectionPort: NodeConnectionType
        public let isCameraEnabledPort: NodeConnectionType
        public let isShadowsEnabledPort: NodeConnectionType
        public let shapePort: NodeConnectionType
        public let strokePositionPort: NodeConnectionType
        public let strokeWidthPort: NodeConnectionType
        public let strokeColorPort: NodeConnectionType
        public let coordinateSystemPort: NodeConnectionType
        public let cornerRadiusPort: NodeConnectionType
        public let canvasLineColorPort: NodeConnectionType
        public let canvasLineWidthPort: NodeConnectionType
        public let canvasPositionPort: NodeConnectionType
        public let textPort: NodeConnectionType
        public let fontSizePort: NodeConnectionType
        public let textAlignmentPort: NodeConnectionType
        public let verticalAlignmentPort: NodeConnectionType
        public let textDecorationPort: NodeConnectionType
        public let textFontPort: NodeConnectionType
        public let imagePort: NodeConnectionType
        public let videoPort: NodeConnectionType
        public let fitStylePort: NodeConnectionType
        public let clippedPort: NodeConnectionType
        public let isAnimatingPort: NodeConnectionType
        public let progressIndicatorStylePort: NodeConnectionType
        public let progressPort: NodeConnectionType
        
        // Sidebar data
        public let hasSidebarVisibility: Bool
        public let layerGroupId: NodeId?
        public let isExpandedInSidebar: Bool?
        
        public init(id: NodeId,
                    layer: Layer,
                    positionPort: NodeConnectionType = .values([]),
                    sizePort: NodeConnectionType = .values([]),
                    scalePort: NodeConnectionType = .values([]),
                    anchoringPort: NodeConnectionType = .values([]),
                    opacityPort: NodeConnectionType = .values([]),
                    zIndexPort: NodeConnectionType = .values([]),
                    colorPort: NodeConnectionType = .values([]),
                    rotationXPort: NodeConnectionType = .values([]),
                    rotationYPort: NodeConnectionType = .values([]),
                    rotationZPort: NodeConnectionType = .values([]),
                    lineColorPort: NodeConnectionType = .values([]),
                    lineWidthPort: NodeConnectionType = .values([]),
                    blurPort: NodeConnectionType = .values([]),
                    blendModePort: NodeConnectionType = .values([]),
                    brightnessPort: NodeConnectionType = .values([]),
                    colorInvertPort: NodeConnectionType = .values([]),
                    contrastPort: NodeConnectionType = .values([]),
                    hueRotationPort: NodeConnectionType = .values([]),
                    saturationPort: NodeConnectionType = .values([]),
                    pivotPort: NodeConnectionType = .values([]),
                    enabledPort: NodeConnectionType = .values([]),
                    blurRadiusPort: NodeConnectionType = .values([]),
                    backgroundColorPort: NodeConnectionType = .values([]),
                    isClippedPort: NodeConnectionType = .values([]),
                    orientationPort: NodeConnectionType = .values([]),
                    paddingPort: NodeConnectionType = .values([]),
                    setupModePort: NodeConnectionType = .values([]),
                    allAnchorsPort: NodeConnectionType = .values([]),
                    cameraDirectionPort: NodeConnectionType = .values([]),
                    isCameraEnabledPort: NodeConnectionType = .values([]),
                    isShadowsEnabledPort: NodeConnectionType = .values([]),
                    shapePort: NodeConnectionType = .values([]),
                    strokePositionPort: NodeConnectionType = .values([]),
                    strokeWidthPort: NodeConnectionType = .values([]),
                    strokeColorPort: NodeConnectionType = .values([]),
                    coordinateSystemPort: NodeConnectionType = .values([]),
                    cornerRadiusPort: NodeConnectionType = .values([]),
                    canvasLineColorPort: NodeConnectionType = .values([]),
                    canvasLineWidthPort: NodeConnectionType = .values([]),
                    canvasPositionPort: NodeConnectionType = .values([]),
                    textPort: NodeConnectionType = .values([]),
                    fontSizePort: NodeConnectionType = .values([]),
                    textAlignmentPort: NodeConnectionType = .values([]),
                    verticalAlignmentPort: NodeConnectionType = .values([]),
                    textDecorationPort: NodeConnectionType = .values([]),
                    textFontPort: NodeConnectionType = .values([]),
                    imagePort: NodeConnectionType = .values([]),
                    videoPort: NodeConnectionType = .values([]),
                    fitStylePort: NodeConnectionType = .values([]),
                    clippedPort: NodeConnectionType = .values([]),
                    isAnimatingPort: NodeConnectionType = .values([]),
                    progressIndicatorStylePort: NodeConnectionType = .values([]),
                    progressPort: NodeConnectionType = .values([]),
                    hasSidebarVisibility: Bool,
                    layerGroupId: NodeId?,
                    isExpandedInSidebar: Bool?) {
            self.id = id
            self.layer = layer
            
            self.positionPort = positionPort
            self.sizePort = sizePort
            self.scalePort = scalePort
            self.anchoringPort = anchoringPort
            self.opacityPort = opacityPort
            self.zIndexPort = zIndexPort
            self.colorPort = colorPort
            self.rotationXPort = rotationXPort
            self.rotationYPort = rotationYPort
            self.rotationZPort = rotationZPort
            self.lineColorPort = lineColorPort
            self.lineWidthPort = lineWidthPort
            self.blurPort = blurPort
            self.blendModePort = blendModePort
            self.brightnessPort = brightnessPort
            self.colorInvertPort = colorInvertPort
            self.contrastPort = contrastPort
            self.hueRotationPort = hueRotationPort
            self.saturationPort = saturationPort
            self.pivotPort = pivotPort
            self.enabledPort = enabledPort
            self.blurRadiusPort = blurRadiusPort
            self.backgroundColorPort = backgroundColorPort
            self.isClippedPort = isClippedPort
            self.orientationPort = orientationPort
            self.paddingPort = paddingPort
            self.setupModePort = setupModePort
            self.allAnchorsPort = allAnchorsPort
            self.cameraDirectionPort = cameraDirectionPort
            self.isCameraEnabledPort = isCameraEnabledPort
            self.isShadowsEnabledPort = isShadowsEnabledPort
            self.shapePort = shapePort
            self.strokePositionPort = strokePositionPort
            self.strokeWidthPort = strokeWidthPort
            self.strokeColorPort = strokeColorPort
            self.coordinateSystemPort = coordinateSystemPort
            self.cornerRadiusPort = cornerRadiusPort
            self.canvasLineColorPort = canvasLineColorPort
            self.canvasLineWidthPort = canvasLineWidthPort
            self.canvasPositionPort = canvasPositionPort
            self.textPort = textPort
            self.fontSizePort = fontSizePort
            self.textAlignmentPort = textAlignmentPort
            self.verticalAlignmentPort = verticalAlignmentPort
            self.textDecorationPort = textDecorationPort
            self.textFontPort = textFontPort
            self.imagePort = imagePort
            self.videoPort = videoPort
            self.fitStylePort = fitStylePort
            self.clippedPort = clippedPort
            self.isAnimatingPort = isAnimatingPort
            self.progressIndicatorStylePort = progressIndicatorStylePort
            self.progressPort = progressPort
            
            self.hasSidebarVisibility = hasSidebarVisibility
            self.layerGroupId = layerGroupId
            self.isExpandedInSidebar = isExpandedInSidebar
        }
    }
}

extension LayerNodeEntity_V6.LayerNodeEntity: StitchVersionedCodable {
    public init(previousInstance: LayerNodeEntity_V6.PreviousInstance) {
        self.init(id: previousInstance.id,
                  layer:
                    LayerNodeEntity_V6.Layer(previousInstance: previousInstance.layer),
                  
                  // Empty values that we correct in the running app
                  positionPort: .values([]),
                  sizePort: .values([]),
                  scalePort: .values([]),
                  anchoringPort: .values([]),
                  opacityPort: .values([]),
                  zIndexPort: .values([]),
                  colorPort: .values([]),
                  rotationXPort: .values([]),
                  rotationYPort: .values([]),
                  rotationZPort: .values([]),
                  lineColorPort: .values([]),
                  lineWidthPort: .values([]),
                  blurPort: .values([]),
                  blendModePort: .values([]),
                  brightnessPort: .values([]),
                  colorInvertPort: .values([]),
                  contrastPort: .values([]),
                  hueRotationPort: .values([]),
                  saturationPort: .values([]),
                  pivotPort: .values([]),
                  enabledPort: .values([]),
                  blurRadiusPort: .values([]),
                  backgroundColorPort: .values([]),
                  isClippedPort: .values([]),
                  orientationPort: .values([]),
                  paddingPort: .values([]),
                  setupModePort: .values([]),
                  allAnchorsPort: .values([]),
                  cameraDirectionPort: .values([]),
                  isCameraEnabledPort: .values([]),
                  isShadowsEnabledPort: .values([]),
                  shapePort: .values([]),
                  strokePositionPort: .values([]),
                  strokeWidthPort: .values([]),
                  strokeColorPort: .values([]),
                  coordinateSystemPort: .values([]),
                  cornerRadiusPort: .values([]),
                  canvasLineColorPort: .values([]),
                  canvasLineWidthPort: .values([]),
                  canvasPositionPort: .values([]),
                  textPort: .values([]),
                  fontSizePort: .values([]),
                  textAlignmentPort: .values([]),
                  verticalAlignmentPort: .values([]),
                  textDecorationPort: .values([]),
                  textFontPort: .values([]),
                  imagePort: .values([]),
                  videoPort: .values([]),
                  fitStylePort: .values([]),
                  clippedPort: .values([]),
                  
                  hasSidebarVisibility: previousInstance.hasSidebarVisibility,
                  layerGroupId: previousInstance.layerGroupId,
                  isExpandedInSidebar: previousInstance.isExpandedInSidebar)
    }
}
