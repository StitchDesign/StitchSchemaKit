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
        public var positionPort: NodeConnectionType
        public var sizePort: NodeConnectionType
        public var scalePort: NodeConnectionType
        public var anchoringPort: NodeConnectionType
        public var opacityPort: NodeConnectionType
        public var zIndexPort: NodeConnectionType
        public var colorPort: NodeConnectionType
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
                    model3DPort: NodeConnectionType = .values([]),
                    mapTypePort: NodeConnectionType = .values([]),
                    mapLatLongPort: NodeConnectionType = .values([]),
                    mapSpanPort: NodeConnectionType = .values([]),
                    isSwitchToggledPort: NodeConnectionType = .values([]),
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
            self.model3DPort = model3DPort
            self.mapTypePort = mapTypePort
            self.mapLatLongPort = mapLatLongPort
            self.mapSpanPort = mapSpanPort
            self.isSwitchToggledPort = isSwitchToggledPort
            
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
                  isAnimatingPort: .values([]),
                  progressIndicatorStylePort: .values([]),
                  progressPort: .values([]),
                  model3DPort: .values([]),
                  mapTypePort: .values([]),
                  mapLatLongPort: .values([]),
                  mapSpanPort: .values([]),
                  isSwitchToggledPort: .values([]),
                  
                  hasSidebarVisibility: previousInstance.hasSidebarVisibility,
                  layerGroupId: previousInstance.layerGroupId,
                  isExpandedInSidebar: previousInstance.isExpandedInSidebar)
    }
}
