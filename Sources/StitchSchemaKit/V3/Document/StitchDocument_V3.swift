//
//  StitchDocument.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum StitchDocument_V3: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V3
    public typealias PreviousInstance = StitchDocument_V2.StitchDocument
    public typealias NodeEntitySchemas = [NodeEntity_V3.NodeEntity]
    public typealias CommentBoxesDict = [CommentBoxId: CommentBoxData_V3.CommentBoxData]
    public typealias PreviewSize = PreviewSize_V3.PreviewSize
    public typealias SidebarLayerDataList = [SidebarLayerData_V3.SidebarLayerData]
    public typealias CameraSettings = CameraSettings_V3.CameraSettings
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
        
        // MARK: remove `transferRepresentation` from older `StitchDocument` versions
//        static var transferRepresentation: some TransferRepresentation {
//            FileRepresentation(contentType: .stitchDocument,
//                               exporting: Self.exportDocument,
//                               importing: Self.importDocument)
//        }
    }
}

extension StitchDocument_V3.StitchDocument {
    public init(previousInstance: StitchDocument_V3.PreviousInstance) {
        self.init(
            projectId: previousInstance.projectId,
            name: previousInstance.name,
            previewWindowSize: previousInstance.previewWindowSize,
            previewSizeDevice: PreviewSize_V3.PreviewSize(previousInstance: previousInstance.previewSizeDevice),
            previewWindowBackgroundColor: previousInstance.previewWindowBackgroundColor,
            localPosition: previousInstance.localPosition,
            zoomData: previousInstance.zoomData,
            nodes: StitchDocument_V3.NodeEntitySchemas(previousElements: previousInstance.nodes),
            orderedSidebarLayers: StitchDocument_V3.SidebarLayerDataList(previousElements: previousInstance.orderedSidebarLayers),
            commentBoxesDict: previousInstance.commentBoxesDict.reduce(into: .init()) { result, data in
                result.updateValue(StitchDocument_V3.CommentBoxesDict.Value(previousInstance: data.value),
                                   forKey: data.key)
            },
            cameraSettings: StitchDocument_V3.CameraSettings(previousInstance: previousInstance.cameraSettings)
        )
    }
}
