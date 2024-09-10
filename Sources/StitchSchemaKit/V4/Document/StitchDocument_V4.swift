//
//  StitchDocument.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum StitchDocument_V4: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V4
    public typealias PreviousInstance = StitchDocument_V3.StitchDocument
    public typealias NodeEntitySchemas = [NodeEntity_V4.NodeEntity]
    public typealias CommentBoxes = [CommentBoxData_V4.CommentBoxData]
    public typealias PreviewSize = PreviewSize_V4.PreviewSize
    public typealias SidebarLayerDataList = [SidebarLayerData_V4.SidebarLayerData]
    public typealias CameraSettings = CameraSettings_V4.CameraSettings
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

extension StitchDocument_V4.StitchDocument {
    public init(previousInstance: StitchDocument_V4.PreviousInstance) {
        self.init(
            projectId: previousInstance.projectId,
            name: previousInstance.name,
            previewWindowSize: previousInstance.previewWindowSize,
            previewSizeDevice: PreviewSize_V4.PreviewSize(previousInstance: previousInstance.previewSizeDevice),
            previewWindowBackgroundColor: previousInstance.previewWindowBackgroundColor,
            localPosition: previousInstance.localPosition,
            zoomData: previousInstance.zoomData,
            nodes: StitchDocument_V4.NodeEntitySchemas(previousElements: previousInstance.nodes),
            orderedSidebarLayers: StitchDocument_V4.SidebarLayerDataList(previousElements: previousInstance.orderedSidebarLayers),
            commentBoxes: StitchDocument_V4.CommentBoxes(previousElements: previousInstance.commentBoxes),
            cameraSettings: StitchDocument_V4.CameraSettings(previousInstance: previousInstance.cameraSettings)
        )
    }
}
