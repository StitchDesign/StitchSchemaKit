//
//  StitchDocument.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum StitchDocument_V25: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V25
    public typealias PreviousInstance = StitchDocument_V24.StitchDocument
    public typealias GraphEntity = GraphEntity_V25.GraphEntity
    public typealias PreviewSize = PreviewSize_V25.PreviewSize
    public typealias CameraSettings = CameraSettings_V25.CameraSettings
    // MARK: - end

    public struct StitchDocument: StitchVersionedCodable, Equatable, Sendable {
        // Node data
        public var graph: GraphEntity
        
        // Preview window
        public let previewWindowSize: CGSize
        public let previewSizeDevice: PreviewSize
        public let previewWindowBackgroundColor: Color
        
        // Graph positioning data
        public let localPosition: CGPoint
        public let zoomData: CGFloat
        
        public let cameraSettings: CameraSettings
        
        public init(graph: GraphEntity,
                    previewWindowSize: CGSize,
                    previewSizeDevice: PreviewSize,
                    previewWindowBackgroundColor: Color,
                    localPosition: CGPoint,
                    zoomData: CGFloat,
                    cameraSettings: CameraSettings) {
            self.graph = graph
            self.previewWindowSize = previewWindowSize
            self.previewSizeDevice = previewSizeDevice
            self.previewWindowBackgroundColor = previewWindowBackgroundColor
            self.localPosition = localPosition
            self.zoomData = zoomData
            self.cameraSettings = cameraSettings
        }
    }
}

extension StitchDocument_V25.StitchDocument {
    public init(previousInstance: StitchDocument_V25.PreviousInstance) {
        self.init(graph: .init(id: previousInstance.projectId,
                               name: previousInstance.name,
                               nodes: .init(previousElements: previousInstance.nodes),
                               orderedSidebarLayers: .init(previousElements: previousInstance.orderedSidebarLayers),
                               commentBoxes: .init(previousElements: previousInstance.commentBoxes)),
                  previewWindowSize: previousInstance.previewWindowSize,
                  previewSizeDevice: .init(previousInstance: previousInstance.previewSizeDevice),
                  previewWindowBackgroundColor: previousInstance.previewWindowBackgroundColor,
                  localPosition: previousInstance.localPosition,
                  zoomData: previousInstance.zoomData,
                  cameraSettings: .init(previousInstance: previousInstance.cameraSettings))
    }
}
