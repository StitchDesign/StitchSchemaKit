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
        
        // Sidebar data
        public let hasSidebarVisibility: Bool
        public let layerGroupId: NodeId?
        public let isExpandedInSidebar: Bool?
        
        public init(id: NodeId,
                    layer: Layer,
                    positionPort: NodeConnectionType,
                    sizePort: NodeConnectionType,
                    scalePort: NodeConnectionType,
                    anchoringPort: NodeConnectionType,
                    opacityPort: NodeConnectionType,
                    zIndexPort: NodeConnectionType,
                    colorPort: NodeConnectionType,
                    rotationXPort: NodeConnectionType,
                    rotationYPort: NodeConnectionType,
                    rotationZPort: NodeConnectionType,
                    lineColorPort: NodeConnectionType,
                    lineWidthPort: NodeConnectionType,
                    blurPort: NodeConnectionType,
                    blendModePort: NodeConnectionType,
                    brightnessPort: NodeConnectionType,
                    colorInvertPort: NodeConnectionType,
                    contrastPort: NodeConnectionType,
                    hueRotationPort: NodeConnectionType,
                    saturationPort: NodeConnectionType,
                    pivotPort: NodeConnectionType,
                    enabledPort: NodeConnectionType,
                    blurRadiusPort: NodeConnectionType,
                    backgroundColorPort: NodeConnectionType,
                    isClippedPort: NodeConnectionType,
                    orientationPort: NodeConnectionType,
                    paddingPort: NodeConnectionType,
                    setupModePort: NodeConnectionType,
                    allAnchorsPort: NodeConnectionType,
                    cameraDirectionPort: NodeConnectionType,
                    isCameraEnabledPort: NodeConnectionType,
                    isShadowsEnabledPort: NodeConnectionType,
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
                  positionPort: .values([.none]),
                  sizePort: .values([.none]),
                  scalePort: .values([.none]),
                  anchoringPort: .values([.none]),
                  opacityPort: .values([.none]),
                  zIndexPort: .values([.none]),
                  colorPort: .values([.none]),
                  rotationXPort: .values([.none]),
                  rotationYPort: .values([.none]),
                  rotationZPort: .values([.none]),
                  lineColorPort: .values([.none]),
                  lineWidthPort: .values([.none]),
                  blurPort: .values([.none]),
                  blendModePort: .values([.none]),
                  brightnessPort: .values([.none]),
                  colorInvertPort: .values([.none]),
                  contrastPort: .values([.none]),
                  hueRotationPort: .values([.none]),
                  saturationPort: .values([.none]),
                  pivotPort: .values([.none]),
                  enabledPort: .values([.none]),
                  blurRadiusPort: .values([.none]),
                  backgroundColorPort: .values([.none]),
                  isClippedPort: .values([.none]),
                  orientationPort: .values([.none]),
                  paddingPort: .values([.none]),
                  setupModePort: .values([.none]),
                  allAnchorsPort: .values([.none]),
                  cameraDirectionPort: .values([.none]),
                  isCameraEnabledPort: .values([.none]),
                  isShadowsEnabledPort: .values([.none]),
                  hasSidebarVisibility: previousInstance.hasSidebarVisibility,
                  layerGroupId: previousInstance.layerGroupId,
                  isExpandedInSidebar: previousInstance.isExpandedInSidebar)
    }
}
