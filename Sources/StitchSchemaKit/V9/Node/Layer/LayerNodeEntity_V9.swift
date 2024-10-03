//
//  LayerNodeEntity_V9.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/29/23.
//

import SwiftUI

public enum LayerNodeEntity_V9: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V9
    public typealias PreviousInstance = LayerNodeEntity_V8.LayerNodeEntity
    public typealias NodeEntitySchema = NodeEntity_V9
    public typealias Layer = Layer_V9.Layer
    public typealias NodeConnectionType = NodeConnectionType_V9.NodeConnectionType
    // MARK: - end

    public struct LayerNodeEntity: Equatable {
        public  let id: UUID
        public let layer: Layer
        
        // Value data
        
        // Required
        public var positionPort: NodeConnectionType
        public var sizePort: NodeConnectionType
        public var scalePort: NodeConnectionType
        public var anchoringPort: NodeConnectionType
        public var opacityPort: NodeConnectionType
        public var zIndexPort: NodeConnectionType
        
        // Common
        public var masksPort: NodeConnectionType
        public var colorPort: NodeConnectionType
        public var startColorPort: NodeConnectionType
        public var endColorPort: NodeConnectionType
        public var startAnchorPort: NodeConnectionType
        public var endAnchorPort: NodeConnectionType
        public var rotationXPort: NodeConnectionType
        public var rotationYPort: NodeConnectionType
        public var rotationZPort: NodeConnectionType
        public var lineColorPort: NodeConnectionType
        public var lineWidthPort: NodeConnectionType
        public var blurPort: NodeConnectionType
        public var blendModePort: NodeConnectionType
        public var brightnessPort: NodeConnectionType
        public var colorInvertPort: NodeConnectionType
        public var contrastPort: NodeConnectionType
        public var hueRotationPort: NodeConnectionType
        public var saturationPort: NodeConnectionType
        public var pivotPort: NodeConnectionType
        public var enabledPort: NodeConnectionType
        public var blurRadiusPort: NodeConnectionType
        public var backgroundColorPort: NodeConnectionType
        public var isClippedPort: NodeConnectionType
        public var orientationPort: NodeConnectionType
        public var paddingPort: NodeConnectionType
        public var setupModePort: NodeConnectionType
        public var allAnchorsPort: NodeConnectionType
        public var cameraDirectionPort: NodeConnectionType
        public var isCameraEnabledPort: NodeConnectionType
        public var isShadowsEnabledPort: NodeConnectionType
        public var shapePort: NodeConnectionType
        public var strokePositionPort: NodeConnectionType
        public var strokeWidthPort: NodeConnectionType
        public var strokeColorPort: NodeConnectionType
        public var strokeStartPort: NodeConnectionType
        public var strokeEndPort: NodeConnectionType
        public var coordinateSystemPort: NodeConnectionType
        public var cornerRadiusPort: NodeConnectionType
        public var canvasLineColorPort: NodeConnectionType
        public var canvasLineWidthPort: NodeConnectionType
        public var canvasPositionPort: NodeConnectionType
        public var textPort: NodeConnectionType
        public var fontSizePort: NodeConnectionType
        public var textAlignmentPort: NodeConnectionType
        public var verticalAlignmentPort: NodeConnectionType
        public var textDecorationPort: NodeConnectionType
        public var textFontPort: NodeConnectionType
        public var imagePort: NodeConnectionType
        public var videoPort: NodeConnectionType
        public var fitStylePort: NodeConnectionType
        public var clippedPort: NodeConnectionType
        public var isAnimatingPort: NodeConnectionType
        public var progressIndicatorStylePort: NodeConnectionType
        public var progressPort: NodeConnectionType
        public var model3DPort: NodeConnectionType
        public var mapTypePort: NodeConnectionType
        public var mapLatLongPort: NodeConnectionType
        public var mapSpanPort: NodeConnectionType
        public var isSwitchToggledPort: NodeConnectionType
        public var placeholderTextPort: NodeConnectionType
        
        // Sidebar data
        public let hasSidebarVisibility: Bool
        public let layerGroupId: UUID?
        public let isExpandedInSidebar: Bool?
        
        public init(id: UUID,
                    layer: Layer,
                    positionPort: NodeConnectionType = .values([]),
                    sizePort: NodeConnectionType = .values([]),
                    scalePort: NodeConnectionType = .values([]),
                    anchoringPort: NodeConnectionType = .values([]),
                    opacityPort: NodeConnectionType = .values([]),
                    zIndexPort: NodeConnectionType = .values([]),
                    masksPort: NodeConnectionType = .values([]),
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
                    strokeStartPort: NodeConnectionType = .values([]),
                    strokeEndPort: NodeConnectionType = .values([]),
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
                    model3DPort: NodeConnectionType = .values([]),
                    mapTypePort: NodeConnectionType = .values([]),
                    mapLatLongPort: NodeConnectionType = .values([]),
                    mapSpanPort: NodeConnectionType = .values([]),
                    isSwitchToggledPort: NodeConnectionType = .values([]),
                    placeholderTextPort: NodeConnectionType = .values([]),
                    startColorPort: NodeConnectionType = .values([]),
                    endColorPort: NodeConnectionType = .values([]),
                    startAnchorPort: NodeConnectionType = .values([]),
                    endAnchorPort: NodeConnectionType = .values([]),
                    hasSidebarVisibility: Bool,
                    layerGroupId: UUID?,
                    isExpandedInSidebar: Bool?) {
            self.id = id
            self.layer = layer
            
            // Required
            self.positionPort = positionPort
            self.sizePort = sizePort
            self.scalePort = scalePort
            self.anchoringPort = anchoringPort
            self.opacityPort = opacityPort
            self.zIndexPort = zIndexPort
            
            // Common
            self.masksPort = masksPort
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
            self.strokeStartPort = strokeStartPort
            self.strokeEndPort = strokeEndPort
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
            self.model3DPort = model3DPort
            self.mapTypePort = mapTypePort
            self.mapLatLongPort = mapLatLongPort
            self.mapSpanPort = mapSpanPort
            self.isSwitchToggledPort = isSwitchToggledPort
            self.placeholderTextPort = placeholderTextPort
            self.startColorPort = startColorPort
            self.endColorPort = endColorPort
            self.startAnchorPort = startAnchorPort
            self.endAnchorPort = endAnchorPort
            
            self.hasSidebarVisibility = hasSidebarVisibility
            self.layerGroupId = layerGroupId
            self.isExpandedInSidebar = isExpandedInSidebar
        }
    }
}

extension LayerNodeEntity_V9.LayerNodeEntity: StitchVersionedCodable {
    public init(previousInstance: LayerNodeEntity_V9.PreviousInstance) {
        self.init(id: previousInstance.id,
                  layer:
                    LayerNodeEntity_V9.Layer(previousInstance: previousInstance.layer),
                  
                  // Empty values that we correct in the running app
                  positionPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.positionPort),
                  sizePort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.sizePort),
                  scalePort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.scalePort),
                  anchoringPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.anchoringPort),
                  opacityPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.opacityPort),
                  zIndexPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.zIndexPort),
                  colorPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.colorPort),
                  rotationXPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.rotationXPort),
                  rotationYPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.rotationYPort),
                  rotationZPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.rotationZPort),
                  lineColorPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.lineColorPort),
                  lineWidthPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.lineWidthPort),
                  blurPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.blurPort),
                  blendModePort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.blendModePort),
                  brightnessPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.brightnessPort),
                  colorInvertPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.colorInvertPort),
                  contrastPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.contrastPort),
                  hueRotationPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.hueRotationPort),
                  saturationPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.saturationPort),
                  pivotPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.pivotPort),
                  enabledPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.enabledPort),
                  blurRadiusPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.blurRadiusPort),
                  backgroundColorPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.backgroundColorPort),
                  isClippedPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.isClippedPort),
                  orientationPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.orientationPort),
                  paddingPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.paddingPort),
                  setupModePort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.setupModePort),
                  allAnchorsPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.allAnchorsPort),
                  cameraDirectionPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.cameraDirectionPort),
                  isCameraEnabledPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.isCameraEnabledPort),
                  isShadowsEnabledPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.isShadowsEnabledPort),
                  shapePort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.shapePort),
                  strokePositionPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.strokePositionPort),
                  strokeWidthPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.strokeWidthPort),
                  strokeColorPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.strokeColorPort),
                  coordinateSystemPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.coordinateSystemPort),
                  cornerRadiusPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.cornerRadiusPort),
                  canvasLineColorPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.canvasLineColorPort),
                  canvasLineWidthPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.canvasLineWidthPort),
                  canvasPositionPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.canvasPositionPort),
                  textPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.textPort),
                  fontSizePort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.fontSizePort),
                  textAlignmentPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.textAlignmentPort),
                  verticalAlignmentPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.verticalAlignmentPort),
                  textDecorationPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.textDecorationPort),
                  textFontPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.textFontPort),
                  imagePort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.imagePort),
                  videoPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.videoPort),
                  fitStylePort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.fitStylePort),
                  clippedPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.clippedPort),
                  isAnimatingPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.isAnimatingPort),
                  progressIndicatorStylePort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.progressIndicatorStylePort),
                  progressPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.progressPort),
                  model3DPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.model3DPort),
                  mapTypePort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.mapTypePort),
                  mapLatLongPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.mapLatLongPort),
                  mapSpanPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.mapSpanPort),
                  isSwitchToggledPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.isSwitchToggledPort),
                  placeholderTextPort: NodeConnectionType_V9.NodeConnectionType(previousInstance: previousInstance.placeholderTextPort),
                  
                  hasSidebarVisibility: previousInstance.hasSidebarVisibility,
                  layerGroupId: previousInstance.layerGroupId,
                  isExpandedInSidebar: previousInstance.isExpandedInSidebar)
    }
}
