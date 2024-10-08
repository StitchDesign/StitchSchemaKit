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
    public static let version = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.StitchDocument
    public typealias NodeEntitySchemas = [NodeEntity_V1.NodeEntity]
    public typealias CommentBoxesDict = [CommentBoxId: CommentBoxData_V1.CommentBoxData]
    public typealias PreviewSize = PreviewSize_V1.PreviewSize
    public typealias SidebarLayerDataList = [SidebarLayerData_V1.SidebarLayerData]
    public typealias CameraSettings = CameraSettings_V1.CameraSettings
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
        public let nodes: NodeEntitySchemas
        public let orderedSidebarLayers: SidebarLayerDataList
        public let commentBoxesDict: CommentBoxesDict

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
             commentBoxesDict: CommentBoxesDict,
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
