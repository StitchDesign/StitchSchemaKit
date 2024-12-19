//
//  LayerNodeEntity_V29.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/29/23.
//

import SwiftUI

public enum LayerNodeEntity_V29: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V29
    public typealias PreviousInstance = LayerNodeEntity_V28.LayerNodeEntity
    public typealias CanvasNodeEntity = CanvasNodeEntity_V29.CanvasNodeEntity
    public typealias Layer = Layer_V29.Layer
    public typealias LayerInputEntity = LayerInputEntity_V29.LayerInputEntity
    public typealias NodeConnectionType = NodeConnectionType_V29.NodeConnectionType
    // MARK: - end

    public struct LayerNodeEntity: Hashable {
        public  let id: UUID
        public let layer: Layer
        
        // Optional node entities for layer node outputs
        public var outputCanvasPorts: [CanvasNodeEntity?]
        
        // Required
        public var positionPort: LayerInputEntity
        public var sizePort: LayerInputEntity
        public var scalePort: LayerInputEntity
        public var anchoringPort: LayerInputEntity
        public var opacityPort: LayerInputEntity
        public var zIndexPort: LayerInputEntity
        
        // Common
        public var masksPort: LayerInputEntity
        public var colorPort: LayerInputEntity
        public var startColorPort: LayerInputEntity
        public var endColorPort: LayerInputEntity
        public var startAnchorPort: LayerInputEntity
        public var endAnchorPort: LayerInputEntity
        
        public var centerAnchorPort: LayerInputEntity
        public var startAnglePort: LayerInputEntity
        public var endAnglePort: LayerInputEntity
        public var startRadiusPort: LayerInputEntity
        public var endRadiusPort: LayerInputEntity
        public var rotationXPort: LayerInputEntity
        public var rotationYPort: LayerInputEntity
        public var rotationZPort: LayerInputEntity
        public var lineColorPort: LayerInputEntity
        public var lineWidthPort: LayerInputEntity
        public var blurPort: LayerInputEntity
        public var blendModePort: LayerInputEntity
        public var brightnessPort: LayerInputEntity
        public var colorInvertPort: LayerInputEntity
        public var contrastPort: LayerInputEntity
        public var hueRotationPort: LayerInputEntity
        public var saturationPort: LayerInputEntity
        public var pivotPort: LayerInputEntity
        public var enabledPort: LayerInputEntity
        public var blurRadiusPort: LayerInputEntity
        public var backgroundColorPort: LayerInputEntity
        public var isClippedPort: LayerInputEntity
        public var orientationPort: LayerInputEntity
        
        public var paddingPort: LayerInputEntity
        
        public var setupModePort: LayerInputEntity
        public var cameraDirectionPort: LayerInputEntity
        public var isCameraEnabledPort: LayerInputEntity
        public var isShadowsEnabledPort: LayerInputEntity
        
        public var shapePort: LayerInputEntity
        public var strokePositionPort: LayerInputEntity
        public var strokeWidthPort: LayerInputEntity
        public var strokeColorPort: LayerInputEntity
        public var strokeStartPort: LayerInputEntity
        public var strokeEndPort: LayerInputEntity
        public var strokeLineCapPort: LayerInputEntity
        public var strokeLineJoinPort: LayerInputEntity
        public var coordinateSystemPort: LayerInputEntity
        
        public var cornerRadiusPort: LayerInputEntity
        public var canvasLineColorPort: LayerInputEntity
        public var canvasLineWidthPort: LayerInputEntity
        public var canvasPositionPort: LayerInputEntity
        public var textPort: LayerInputEntity
        public var fontSizePort: LayerInputEntity
        public var textAlignmentPort: LayerInputEntity
        public var verticalAlignmentPort: LayerInputEntity
        public var textDecorationPort: LayerInputEntity
        public var textFontPort: LayerInputEntity
        public var imagePort: LayerInputEntity
        public var videoPort: LayerInputEntity
        public var fitStylePort: LayerInputEntity
        public var clippedPort: LayerInputEntity
        public var isAnimatingPort: LayerInputEntity
        public var progressIndicatorStylePort: LayerInputEntity
        public var progressPort: LayerInputEntity
        public var model3DPort: LayerInputEntity
        public var mapTypePort: LayerInputEntity
        public var mapLatLongPort: LayerInputEntity
        public var mapSpanPort: LayerInputEntity
        public var isSwitchToggledPort: LayerInputEntity
        public var placeholderTextPort: LayerInputEntity
        
        public var shadowColorPort: LayerInputEntity
        public var shadowOpacityPort: LayerInputEntity
        public var shadowRadiusPort: LayerInputEntity
        public var shadowOffsetPort: LayerInputEntity
        
        public var transform3DPort: LayerInputEntity
        public var anchorEntityPort: LayerInputEntity

        public var sfSymbolPort: LayerInputEntity
        
        public var videoURLPort: LayerInputEntity
        public var volumePort: LayerInputEntity

        public var spacingBetweenGridColumnsPort: LayerInputEntity
        public var spacingBetweenGridRowsPort: LayerInputEntity
        public var itemAlignmentWithinGridCellPort: LayerInputEntity
        
        public var sizingScenarioPort: LayerInputEntity
        
        // Aspect ratio
        public var widthAxisPort: LayerInputEntity
        public var heightAxisPort: LayerInputEntity
        public var contentModePort: LayerInputEntity
        
        // Min/max size
        public var minSizePort: LayerInputEntity
        public var maxSizePort: LayerInputEntity
        
        // Spacing
        public var spacingPort: LayerInputEntity
                
        // Pinning
        public var isPinnedPort: LayerInputEntity
        public var pinToPort: LayerInputEntity
        public var pinAnchorPort: LayerInputEntity
        public var pinOffsetPort: LayerInputEntity
        
        // Padding, margin; offset in group
        public var layerPaddingPort: LayerInputEntity
        public var layerMarginPort: LayerInputEntity
        public var offsetInGroupPort: LayerInputEntity
        
        // Material Layer
        public var deviceAppearancePort: LayerInputEntity
        public var materialThicknessPort: LayerInputEntity
        
        // Layer scroll
        public var scrollContentSizePort: LayerInputEntity
        
        public var scrollXEnabledPort: LayerInputEntity
        public var scrollJumpToXStylePort: LayerInputEntity
        public var scrollJumpToXPort: LayerInputEntity
        public var scrollJumpToXLocationPort: LayerInputEntity
        
        public var scrollYEnabledPort: LayerInputEntity
        public var scrollJumpToYStylePort: LayerInputEntity
        public var scrollJumpToYPort: LayerInputEntity
        public var scrollJumpToYLocationPort: LayerInputEntity
        
        // Sidebar data
        public let hasSidebarVisibility: Bool
        public let layerGroupId: UUID?
        
        public init(id: UUID,
                    layer: Layer,
                    outputCanvasPorts: [CanvasNodeEntity?],
                    positionPort: LayerInputEntity,
                    sizePort: LayerInputEntity,
                    scalePort: LayerInputEntity,
                    anchoringPort: LayerInputEntity,
                    opacityPort: LayerInputEntity,
                    zIndexPort: LayerInputEntity,
                    masksPort: LayerInputEntity,
                    colorPort: LayerInputEntity,
                    
                    rotationXPort: LayerInputEntity,
                    rotationYPort: LayerInputEntity,
                    rotationZPort: LayerInputEntity,
                    
                    lineColorPort: LayerInputEntity,
                    lineWidthPort: LayerInputEntity,
                    blurPort: LayerInputEntity,
                    blendModePort: LayerInputEntity,
                    brightnessPort: LayerInputEntity,
                    colorInvertPort: LayerInputEntity,
                    contrastPort: LayerInputEntity,
                    hueRotationPort: LayerInputEntity,
                    saturationPort: LayerInputEntity,
                    pivotPort: LayerInputEntity,
                    enabledPort: LayerInputEntity,
                    blurRadiusPort: LayerInputEntity,
                    backgroundColorPort: LayerInputEntity,
                    isClippedPort: LayerInputEntity,
                    orientationPort: LayerInputEntity,
                    
                    paddingPort: LayerInputEntity,
                    
                    setupModePort: LayerInputEntity,
                    cameraDirectionPort: LayerInputEntity,
                    isCameraEnabledPort: LayerInputEntity,
                    isShadowsEnabledPort: LayerInputEntity,
                    
                    shapePort: LayerInputEntity,
                    strokePositionPort: LayerInputEntity,
                    strokeWidthPort: LayerInputEntity,
                    strokeColorPort: LayerInputEntity,
                    strokeStartPort: LayerInputEntity,
                    strokeEndPort: LayerInputEntity,
                    strokeLineCapPort: LayerInputEntity,
                    strokeLineJoinPort: LayerInputEntity,
                    coordinateSystemPort: LayerInputEntity,
                    
                    cornerRadiusPort: LayerInputEntity,
                    canvasLineColorPort: LayerInputEntity,
                    canvasLineWidthPort: LayerInputEntity,
                    canvasPositionPort: LayerInputEntity,
                    
                    textPort: LayerInputEntity,
                    fontSizePort: LayerInputEntity,
                    textAlignmentPort: LayerInputEntity,
                    verticalAlignmentPort: LayerInputEntity,
                    textDecorationPort: LayerInputEntity,
                    textFontPort: LayerInputEntity,
                    
                    imagePort: LayerInputEntity,
                    videoPort: LayerInputEntity,
                    fitStylePort: LayerInputEntity,
                    clippedPort: LayerInputEntity,
                    isAnimatingPort: LayerInputEntity,
                    progressIndicatorStylePort: LayerInputEntity,
                    progressPort: LayerInputEntity,
                    model3DPort: LayerInputEntity,
                    mapTypePort: LayerInputEntity,
                    mapLatLongPort: LayerInputEntity,
                    mapSpanPort: LayerInputEntity,
                    isSwitchToggledPort: LayerInputEntity,
                    placeholderTextPort: LayerInputEntity,
                    startColorPort: LayerInputEntity,
                    endColorPort: LayerInputEntity,
                    startAnchorPort: LayerInputEntity,
                    endAnchorPort: LayerInputEntity,
                    centerAnchorPort: LayerInputEntity,
                    startAnglePort: LayerInputEntity,
                    endAnglePort: LayerInputEntity,
                    startRadiusPort: LayerInputEntity,
                    endRadiusPort: LayerInputEntity,
                    
                    shadowColorPort: LayerInputEntity,
                    shadowOpacityPort: LayerInputEntity,
                    shadowRadiusPort: LayerInputEntity,
                    shadowOffsetPort: LayerInputEntity,
                    
                    sfSymbolPort: LayerInputEntity,
                    
                    videoURLPort: LayerInputEntity,
                    volumePort: LayerInputEntity,
                    
                    spacingBetweenGridColumnsPort: LayerInputEntity,
                    spacingBetweenGridRowsPort: LayerInputEntity,
                    itemAlignmentWithinGridCellPort: LayerInputEntity,
                    
                    sizingScenarioPort: LayerInputEntity,
                    
                    widthAxisPort: LayerInputEntity,
                    heightAxisPort: LayerInputEntity,
                    contentModePort: LayerInputEntity,
                    minSizePort: LayerInputEntity,
                    maxSizePort: LayerInputEntity,
                    spacingPort: LayerInputEntity,
                    
                    isPinnedPort: LayerInputEntity,
                    pinToPort: LayerInputEntity,
                    pinAnchorPort: LayerInputEntity,
                    pinOffsetPort: LayerInputEntity,
                    
                    layerPaddingPort: LayerInputEntity,
                    layerMarginPort: LayerInputEntity,
                    offsetInGroupPort: LayerInputEntity,
                    
                    deviceAppearancePort: LayerInputEntity,
                    materialThicknessPort: LayerInputEntity,
                    
                    scrollContentSizePort: LayerInputEntity,
                    scrollXEnabledPort: LayerInputEntity,
                    scrollJumpToXStylePort: LayerInputEntity,
                    scrollJumpToXPort: LayerInputEntity,
                    scrollJumpToXLocationPort: LayerInputEntity,
                    scrollYEnabledPort: LayerInputEntity,
                    scrollJumpToYStylePort: LayerInputEntity,
                    scrollJumpToYPort: LayerInputEntity,
                    scrollJumpToYLocationPort: LayerInputEntity,
                    
                    transform3DPort: LayerInputEntity,
                    anchorEntityPort: LayerInputEntity,

                    hasSidebarVisibility: Bool,
                    layerGroupId: UUID?) {
            self.id = id
            self.layer = layer
            self.outputCanvasPorts = outputCanvasPorts
            
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
            self.cameraDirectionPort = cameraDirectionPort
            self.isCameraEnabledPort = isCameraEnabledPort
            self.isShadowsEnabledPort = isShadowsEnabledPort
            
            self.shapePort = shapePort
            self.strokePositionPort = strokePositionPort
            self.strokeWidthPort = strokeWidthPort
            self.strokeColorPort = strokeColorPort
            self.strokeStartPort = strokeStartPort
            self.strokeEndPort = strokeEndPort
            self.strokeLineCapPort = strokeLineCapPort
            self.strokeLineJoinPort = strokeLineJoinPort
            
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
            self.centerAnchorPort = centerAnchorPort
            self.startAnglePort = startAnglePort
            self.endAnglePort = endAnglePort
            self.startRadiusPort = startRadiusPort
            self.endRadiusPort = endRadiusPort
            self.hasSidebarVisibility = hasSidebarVisibility
            self.layerGroupId = layerGroupId
            
            self.shadowColorPort = shadowColorPort
            self.shadowOpacityPort = shadowOpacityPort
            self.shadowRadiusPort = shadowRadiusPort
            self.shadowOffsetPort = shadowOffsetPort
            self.sfSymbolPort = sfSymbolPort
            
            self.videoURLPort = videoURLPort
            self.volumePort = volumePort
            
            self.spacingBetweenGridColumnsPort = spacingBetweenGridColumnsPort
            self.spacingBetweenGridRowsPort = spacingBetweenGridRowsPort
            self.itemAlignmentWithinGridCellPort = itemAlignmentWithinGridCellPort
            
            self.sizingScenarioPort = sizingScenarioPort
            
            self.widthAxisPort = widthAxisPort
            self.heightAxisPort = heightAxisPort
            self.contentModePort = contentModePort
            
            self.minSizePort = minSizePort
            self.maxSizePort = maxSizePort
            
            self.spacingPort = spacingPort
            
            self.isPinnedPort = isPinnedPort
            self.pinToPort = pinToPort
            self.pinAnchorPort = pinAnchorPort
            self.pinOffsetPort = pinOffsetPort
            
            self.deviceAppearancePort = deviceAppearancePort
            self.materialThicknessPort = materialThicknessPort
                        
            self.layerPaddingPort = layerPaddingPort
            self.layerMarginPort = layerMarginPort
            self.offsetInGroupPort = offsetInGroupPort

            // Scroll layer inputs
            self.scrollContentSizePort = scrollContentSizePort

            self.scrollXEnabledPort = scrollXEnabledPort
            self.scrollJumpToXStylePort = scrollJumpToXStylePort
            self.scrollJumpToXPort = scrollJumpToXPort
            self.scrollJumpToXLocationPort = scrollJumpToXLocationPort

            self.scrollYEnabledPort = scrollYEnabledPort
            self.scrollJumpToYStylePort = scrollJumpToYStylePort
            self.scrollJumpToYPort = scrollJumpToYPort
            self.scrollJumpToYLocationPort = scrollJumpToYLocationPort

            self.transform3DPort = transform3DPort
            self.anchorEntityPort = anchorEntityPort
        }
    }
}

extension LayerNodeEntity_V29.LayerNodeEntity: StitchVersionedCodable {
    public init(previousInstance: LayerNodeEntity_V29.PreviousInstance) {
        self.init(id: previousInstance.id,
                  layer: LayerNodeEntity_V29.Layer(previousInstance: previousInstance.layer),
                  outputCanvasPorts: previousInstance.outputCanvasPorts.map { .init(previousInstance: $0) },
                  positionPort: .init(previousInstance: previousInstance.positionPort),
                  sizePort: LayerNodeEntity_V29.LayerInputEntity(previousInstance: previousInstance.sizePort),
                  scalePort: .init(previousInstance: previousInstance.scalePort),
                  anchoringPort: .init(previousInstance: previousInstance.anchoringPort),
                  opacityPort: .init(previousInstance: previousInstance.opacityPort),
                  zIndexPort: .init(previousInstance: previousInstance.zIndexPort),
                  masksPort: .init(previousInstance: previousInstance.masksPort),
                  colorPort: .init(previousInstance: previousInstance.colorPort),
                  
                  rotationXPort: .init(previousInstance: previousInstance.rotationXPort),
                  rotationYPort: .init(previousInstance: previousInstance.rotationYPort),
                  rotationZPort: .init(previousInstance: previousInstance.rotationZPort),
                  
                  lineColorPort: .init(previousInstance: previousInstance.lineColorPort),
                  lineWidthPort: .init(previousInstance: previousInstance.lineWidthPort),
                  blurPort: .init(previousInstance: previousInstance.blurPort),
                  blendModePort: .init(previousInstance: previousInstance.blendModePort),
                  brightnessPort: .init(previousInstance: previousInstance.brightnessPort),
                  colorInvertPort: .init(previousInstance: previousInstance.colorInvertPort),
                  contrastPort: .init(previousInstance: previousInstance.contrastPort),
                  hueRotationPort: .init(previousInstance: previousInstance.hueRotationPort),
                  saturationPort: .init(previousInstance: previousInstance.saturationPort),
                  pivotPort: .init(previousInstance: previousInstance.pivotPort),
                  enabledPort: .init(previousInstance: previousInstance.enabledPort),
                  blurRadiusPort: .init(previousInstance: previousInstance.blurRadiusPort),
                  backgroundColorPort: .init(previousInstance: previousInstance.backgroundColorPort),
                  isClippedPort: .init(previousInstance: previousInstance.isClippedPort),
                  orientationPort: .init(previousInstance: previousInstance.orientationPort),
                  paddingPort: .init(previousInstance: previousInstance.paddingPort),
                  
                  setupModePort: .init(previousInstance: previousInstance.setupModePort),
                  cameraDirectionPort: .init(previousInstance: previousInstance.cameraDirectionPort),
                  isCameraEnabledPort: .init(previousInstance: previousInstance.isCameraEnabledPort),
                  isShadowsEnabledPort: .init(previousInstance: previousInstance.isShadowsEnabledPort),
                  
                  shapePort: .init(previousInstance: previousInstance.shapePort),
                  strokePositionPort: .init(previousInstance: previousInstance.strokePositionPort),
                  strokeWidthPort: .init(previousInstance: previousInstance.strokeWidthPort),
                  strokeColorPort: .init(previousInstance: previousInstance.strokeColorPort),
                  strokeStartPort: .init(previousInstance: previousInstance.strokeStartPort),
                  strokeEndPort: .init(previousInstance: previousInstance.strokeEndPort),
                  strokeLineCapPort: .init(previousInstance: previousInstance.strokeLineCapPort),
                  strokeLineJoinPort: .init(previousInstance: previousInstance.strokeLineJoinPort),
                  coordinateSystemPort: .init(previousInstance: previousInstance.coordinateSystemPort),
                  
                  cornerRadiusPort: .init(previousInstance: previousInstance.cornerRadiusPort),
                  canvasLineColorPort: .init(previousInstance: previousInstance.canvasLineColorPort),
                  canvasLineWidthPort: .init(previousInstance: previousInstance.canvasLineWidthPort),
                  canvasPositionPort: .init(previousInstance: previousInstance.canvasPositionPort),
                  textPort: .init(previousInstance: previousInstance.textPort),
                  fontSizePort: .init(previousInstance: previousInstance.fontSizePort),
                                    
                  textAlignmentPort: .init(previousInstance: previousInstance.textAlignmentPort),
                  verticalAlignmentPort: .init(previousInstance: previousInstance.verticalAlignmentPort),
                  textDecorationPort: .init(previousInstance: previousInstance.textDecorationPort),
                  textFontPort: .init(previousInstance: previousInstance.textFontPort),
                  
                  imagePort: .init(previousInstance: previousInstance.imagePort),
                  videoPort: .init(previousInstance: previousInstance.videoPort),
                  fitStylePort: .init(previousInstance: previousInstance.fitStylePort),
                  clippedPort: .init(previousInstance: previousInstance.clippedPort),
                  isAnimatingPort: .init(previousInstance: previousInstance.isAnimatingPort),
                  progressIndicatorStylePort: .init(previousInstance: previousInstance.progressIndicatorStylePort),
                  progressPort: .init(previousInstance: previousInstance.progressPort),
                  model3DPort: .init(previousInstance: previousInstance.model3DPort),
                  mapTypePort: .init(previousInstance: previousInstance.mapTypePort),
                  mapLatLongPort: .init(previousInstance: previousInstance.mapLatLongPort),
                  mapSpanPort: .init(previousInstance: previousInstance.mapSpanPort),
                  isSwitchToggledPort: .init(previousInstance: previousInstance.isSwitchToggledPort),
                  placeholderTextPort: .init(previousInstance: previousInstance.placeholderTextPort),
                  startColorPort: .init(previousInstance: previousInstance.startColorPort),
                  endColorPort: .init(previousInstance: previousInstance.endColorPort),
                  startAnchorPort: .init(previousInstance: previousInstance.startAnchorPort),
                  endAnchorPort: .init(previousInstance: previousInstance.endAnchorPort),
                  centerAnchorPort: .init(previousInstance: previousInstance.centerAnchorPort),
                  startAnglePort: .init(previousInstance: previousInstance.startAnglePort),
                  endAnglePort: .init(previousInstance: previousInstance.endAnglePort),
                  startRadiusPort: .init(previousInstance: previousInstance.startRadiusPort),
                  endRadiusPort: .init(previousInstance: previousInstance.endRadiusPort),
                  
                  shadowColorPort: .init(previousInstance: previousInstance.shadowColorPort),
                  shadowOpacityPort: .init(previousInstance: previousInstance.shadowOpacityPort),
                  shadowRadiusPort: .init(previousInstance: previousInstance.shadowRadiusPort),
                  shadowOffsetPort: .init(previousInstance: previousInstance.shadowOffsetPort),
                  
                  sfSymbolPort: .init(previousInstance: previousInstance.sfSymbolPort),
                  
                  videoURLPort: .init(previousInstance: previousInstance.videoURLPort),
                  volumePort: .init(previousInstance: previousInstance.volumePort),

                  spacingBetweenGridColumnsPort: .init(previousInstance: previousInstance.spacingBetweenGridColumnsPort),
                  spacingBetweenGridRowsPort: .init(previousInstance: previousInstance.spacingBetweenGridRowsPort),
                  itemAlignmentWithinGridCellPort: .init(previousInstance: previousInstance.itemAlignmentWithinGridCellPort),

                  sizingScenarioPort: .init(previousInstance: previousInstance.sizingScenarioPort),
                  
                  widthAxisPort: .init(previousInstance: previousInstance.widthAxisPort),
                  heightAxisPort: .init(previousInstance: previousInstance.heightAxisPort),
                  contentModePort: .init(previousInstance: previousInstance.contentModePort),
                  minSizePort: .init(previousInstance: previousInstance.minSizePort),
                  maxSizePort: .init(previousInstance: previousInstance.maxSizePort),
                  spacingPort: .init(previousInstance: previousInstance.spacingPort),
                  
                  isPinnedPort: .init(previousInstance: previousInstance.isPinnedPort),
                  pinToPort: .init(previousInstance: previousInstance.pinToPort),
                  pinAnchorPort: .init(previousInstance: previousInstance.pinAnchorPort),
                  pinOffsetPort: .init(previousInstance: previousInstance.pinOffsetPort),

                  layerPaddingPort: .init(previousInstance: previousInstance.layerPaddingPort),
                  layerMarginPort: .init(previousInstance: previousInstance.layerMarginPort),
                  offsetInGroupPort: .init(previousInstance: previousInstance.offsetInGroupPort),
                  
                  deviceAppearancePort: .init(previousInstance: previousInstance.deviceAppearancePort),
                  materialThicknessPort: .init(previousInstance: previousInstance.materialThicknessPort),
                  
                  
                  scrollContentSizePort: .init(previousInstance: previousInstance.scrollContentSizePort),

                  scrollXEnabledPort: .init(previousInstance: previousInstance.scrollXEnabledPort),
                  scrollJumpToXStylePort: .init(previousInstance: previousInstance.scrollJumpToXStylePort),
                  scrollJumpToXPort: .init(previousInstance: previousInstance.scrollJumpToXPort),
                  scrollJumpToXLocationPort: .init(previousInstance: previousInstance.scrollJumpToXLocationPort),

                  scrollYEnabledPort: .init(previousInstance: previousInstance.scrollYEnabledPort),
                  scrollJumpToYStylePort: .init(previousInstance: previousInstance.scrollJumpToYStylePort),
                  scrollJumpToYPort: .init(previousInstance: previousInstance.scrollJumpToYPort),
                  scrollJumpToYLocationPort: .init(previousInstance: previousInstance.scrollJumpToYLocationPort),
                  
                  // TODO: remove migration after version 28
                  transform3DPort: Self.createTransformPort(),
                  anchorEntityPort: .init(packedData: .init(inputPort: .values([.asyncMedia(nil)])),
                                          unpackedData: []),

                  hasSidebarVisibility: previousInstance.hasSidebarVisibility,
                  layerGroupId: previousInstance.layerGroupId)
    }

    // TODO: remove after version 29
    static func createTransformPort() -> LayerInputEntity_V29.LayerInputEntity {
        let transform = StitchTransform_V29.StitchTransform(positionX: 0,
                                                            positionY: 0,
                                                            positionZ: 0,
                                                            scaleX: 1,
                                                            scaleY: 1,
                                                            scaleZ: 1,
                                                            rotationX: 0,
                                                            rotationY: 0,
                                                            rotationZ: 0)
        
        return .init(packedData: .init(inputPort: .values([.transform(transform)])),
                     unpackedData: [
                        .init(inputPort: .values([.number(transform.positionX)])),
                        .init(inputPort: .values([.number(transform.positionY)])),
                        .init(inputPort: .values([.number(transform.positionZ)])),
                        .init(inputPort: .values([.number(transform.scaleX)])),
                        .init(inputPort: .values([.number(transform.scaleY)])),
                        .init(inputPort: .values([.number(transform.scaleZ)])),
                        .init(inputPort: .values([.number(transform.rotationX)])),
                        .init(inputPort: .values([.number(transform.rotationY)])),
                        .init(inputPort: .values([.number(transform.rotationZ)])),
                     ]
        )
    }
}
