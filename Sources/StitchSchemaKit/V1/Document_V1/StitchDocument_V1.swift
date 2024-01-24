//
//  StitchDocument.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum StitchDocument_V1: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.StitchDocument
    public typealias NodeEntitySchema = NodeEntity_V1
    // MARK: - end

    public struct StitchDocument: StitchVersionedCodable {
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
        public let nodes: [NodeEntitySchema.NodeEntity]
        public let orderedSidebarLayers: [SidebarLayerType]
        public let commentBoxesDict: CommentBoxesDict

        public let cameraSettings: CameraSettings

        public init(projectId: ProjectId = .init(),
                    name: String = Self.defaultName,
                    previewWindowSize: CGSize = Self.defaultPreviewWindowSize,
                    previewSizeDevice: PreviewSize = PreviewSize.defaultOption,
                    previewWindowBackgroundColor: Color = Self.defaultBackgroundColor,
                    localPosition: CGPoint = .zero,
                    zoomData: CGFloat = .zero,
             nodes: [NodeEntitySchema.NodeEntity] = [],
             orderedSidebarLayers: [SidebarLayerType] = [],
                    commentBoxesDict: CommentBoxesDict = .init(),
                    cameraSettings: CameraSettings = .init()) {
            self.projectId = projectId
            self.name = name
            self.previewWindowSize = previewWindowSize
            self.previewSizeDevice = previewSizeDevice
            self.previewWindowBackgroundColor = previewWindowBackgroundColor
            self.localPosition = localPosition
            self.zoomData = zoomData
            self.nodes = nodes
            self.orderedSidebarLayers = orderedSidebarLayers
            self.commentBoxesDict = commentBoxesDict
            self.cameraSettings = cameraSettings
        }
    }
}

extension StitchDocument_V1.StitchDocument {
    public init(previousInstance: StitchDocument_V1.PreviousInstance) {
        fatalError()
        //            self.projectId = previousInstance.projectId
        //            self.name = previousInstance.name
        //            self.previewWindowSizeWidth = previousInstance.previewWindowSizeWidth
        //            self.previewWindowSizeHeight = previousInstance.previewWindowSizeHeight
        //            self.nodes = NodeEntitySchema.NodeEntity_Codable.upgradeEntities(previousInstance.nodes)
    }
}
