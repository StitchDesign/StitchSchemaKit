//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 1/22/24.
//

import Foundation
import SwiftUI



public enum UserVisibleType: String, CaseIterable, Codable {
    case string
    case bool
    case int
    case color
    case number
    case layerDimension
    case size
    case position
    case point3D
    case point4D
    case matrixTransform
    case plane
    case pulse
    case media
    case json
    case networkRequestType
    case none
    case anchoring
    case cameraDirection
    case interactionId
    case scrollMode
    case textAlignment
    case textVerticalAlignment
    case fitStyle
    case animationCurve
    case lightType
    case layerStroke
    case textTransform
    case dateAndTimeFormat
    case shape
    case scrollJumpStyle
    case scrollDecelerationRate
    case delayStyle
    case shapeCoordinates
    case shapeCommand
    case shapeCommandType
    case orientation
    case cameraOrientation
    case deviceOrientation
    case vnImageCropOption
}


public struct CommentBoxData: Codable, Equatable, Hashable {
    public var id: CommentBoxId
    
    /*
     "Which traversal level (group node) does this comment box belong to?"
     
     nil = top level
     
     TODO: implement this properly, but wait until after SwiftData since e.g. VisibleNodesViewModel etc. may be changing.
     
     For now we just make all comment boxes top-level.
     */
    public var groupId: GroupNodeId?
    
    public var title: String = "Comment"
    public var color: Color
    
    public var nodes: NodeIdSet
    
    // TODO: potentially can consolidate CommentBoxData.position and CommentExpansionBox.startingPoint, CommentExpansionBox.anchorPoint, etc.;
    // a little hard to tell, since the trig + gesture logic is complicated;
    // low-priority refactor.
    public var position: CGSize
    public var previousPosition: CGSize
    public var expansionBox: CommentExpansionBox
    
    public var zIndex: Double // = .zero
    
    public init(id: CommentBoxId = .init(),
                groupId: GroupNodeId? = nil,
                title: String = "Comment",
                color: Color,
                nodes: NodeIdSet = .init(),
                position: CGSize = .zero,
                previousPosition: CGSize = .zero,
                expansionBox: CommentExpansionBox,
                zIndex: Double) {
        self.id = id
        self.groupId = groupId
        self.title = title
        self.color = color
        self.nodes = nodes
        self.position = position
        self.previousPosition = previousPosition
        self.expansionBox = expansionBox
        self.zIndex = zIndex
    }
}

public struct CommentExpansionBox: Codable, Equatable, Hashable {
    public var nodes: NodeIdSet = .init()
    
    // set nil after gesture completes;
    // set non-nil when gesture first starts
    public var expansionDirection: ExpansionDirection?
    
    // size is always positive numbers
    public var size: CGSize // = .zero
    public var previousSize: CGSize // = .zero
    
    // drag gesture start
    public var startPoint: CGPoint // = .zero
    
    // drag gesture current
    public var endPoint: CGPoint // = .zero
    
    public var anchorCorner: CGPoint
    
    public init(nodes: NodeIdSet = .init(),
                expansionDirection: ExpansionDirection? = nil,
                size: CGSize,
                startPoint: CGPoint,
                endPoint: CGPoint,
                anchorCorner: CGPoint? = nil) {
        self.nodes = nodes
        self.expansionDirection = expansionDirection
        self.size = size
        self.previousSize = size
        self.startPoint = startPoint
        self.endPoint = endPoint
        self.anchorCorner = anchorCorner ?? startPoint
    }
}

// not just the size of the box,
// but from where the box goes to etc.
public enum ExpansionDirection: Codable, Equatable, Hashable {
    case topLeft, topRight,
         bottomLeft, bottomRight,
         none
}

public typealias CommentBoxesDict = [CommentBoxId: CommentBoxData]
