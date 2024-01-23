//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 1/22/24.
//

import Foundation
import SwiftUI

public typealias NodeId = UUID
public typealias NodeIdSet = Set<NodeId>

public struct NodeIOCoordinate: Hashable, Equatable, Codable {
    public var portId: Int
    public var nodeId: NodeId
    
    public init(portId: Int, nodeId: NodeId) {
        self.portId = portId
        self.nodeId = nodeId
    }
}

public enum NodeKind: Codable, Equatable, Hashable {
    case patch(Patch), layer(Layer), group
}

public enum Patch: String, CaseIterable, Codable, Equatable {
    case splitter = "Value",
         add,
         convertPosition,
         dragInteraction,
         pressInteraction,
         scrollInteraction,
         repeatingPulse,
         delay,
         pack, unpack,
         counter,
         flipSwitch = "Switch",
         multiply,
         optionPicker,
         loop,
         time,
         deviceTime,
         location,
         random,
         greaterOrEqual,
         lessThanOrEqual,
         equals,
         restartPrototype,
         divide,
         hslColor,
         or,
         and,
         not,
         springAnimation,
         popAnimation,
         bouncyConverter,
         optionSwitch,
         // soundKit,
         pulseOnChange,
         pulse,
         classicAnimation,
         cubicBezierAnimation,
         curve,
         cubicBezierCurve,
         repeatingAnimation,
         loopBuilder,
         loopInsert,
         coreMLClassify,
         coreMLDetection,
         transition,
         imageImport,
         cameraFeed,
         model3DImport,
         arRaycasting,
         arAnchor,
         sampleAndHold,
         grayscale,
         loopSelect,
         videoImport,
         sampleRange,
         soundImport,
         speaker,
         microphone,
         networkRequest,
         valueForKey,
         valueAtIndex,
         loopOverArray,
         setValueForKey,
         jsonObject,
         jsonArray,
         arrayAppend,
         arrayCount,
         arrayJoin,
         arrayReverse,
         arraySort,
         getKeys,
         indexOf,
         subarray,
         valueAtPath,

         // skip, later ?:
         //         openURL, // skip? later?
         //         settingsJSON, // skip? later?

         deviceMotion,
         deviceInfo,
         smoothValue,
         velocity,
         clip,
         max,
         mod,
         absoluteValue,
         round,
         progress,
         reverseProgress,
         wirelessBroadcaster,
         wirelessReceiver,
         rgba,
         arcTan2 = "Arc Tan 2",
         sine,
         cosine,
         hapticFeedback,
         imageToBase64String,
         base64StringToImage,
         whenPrototypeStarts,
         soulver,
         optionEquals,
         subtract,
         squareRoot,
         length,
         min,
         power,
         equalsExactly,
         greaterThan,
         lessThan,
         colorToHSL,
         colorToHex,
         colorToRGB,
         hexColor,
         splitText,
         textEndsWith,
         textLength,
         textReplace,
         textStartsWith,
         textTransform,
         trimText,
         dateAndTimeFormatter,
         stopwatch,
         optionSender,
         any,
         //    gridLayout // complicated; revisit
         loopCount,
         loopDedupe,
         loopFilter,
         //    loopInsertAtEnd, // skip; can just use loopInsert with a -1 index
         loopOptionSwitch,
         loopRemove,
         //    loopRemoveLast, // skip: can just use loopRemove with a -1 index
         loopReverse,
         loopShuffle,
         loopSum,
         loopToArray,
         runningTotal,
         layerInfo,
         triangleShape,
         circleShape,
         ovalShape,
         roundedRectangleShape,
         union,
         keyboard,
         jsonToShape,
         shapeToCommands = "Shape To Commands",
         commandsToShape = "Commands To Shape",
         mouse
}

public enum Layer: String, CaseIterable, Codable {
    case text,
         oval,
         rectangle,
         image,
         group,
         video,
         model3D,
         realityView,
         shape,
         colorFill,
         hitArea,
         canvasSketch = "Canvas Sketch",
         textField = "Text Field"
}

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

public enum InteractionType: String, Equatable, Codable {
    case drag, press, scroll
}

// A given interaction patch node can only be assigned to a single layer at a time, but we can have n-many interaction patch nodes (all of the same type, even) attached to a single layer.
// Hence for `InteractionsDict`, which lives on a layer node, we map a single interaction type (e.g. `.drag`) to a SET of interaction patch node ids.
public typealias InteractionsDict = [InteractionType: NodeIdSet]

public enum SplitterType: String, Codable, CaseIterable {
    case inline = "Inline", // ie regular splitter: input and output
         // add GroupNodeId assoc-val ?
         input = "Input", // ie groupIutput node: output only
         output = "Output" // ie groupOutput node: input only
}

public struct ProjectId: Codable, Identifiable, Equatable, Hashable {
//    typealias Id = Tagged<ProjectId, String>
    public var id: UUID = UUID()
    
    public init() {
        self.id = .init()
    }
    
//    public init(from url: URL) {
//        self.id = url.filename
//    }
}

public enum PreviewSize: String, CaseIterable, Identifiable, Codable {
    public var id: String { self.rawValue }

    // iPhones
    case iPhone14 = "iPhone 14"
    case iPhone14Plus = "iPhone 14 Plus"
    case iPhone14Pro = "iPhone 14 Pro"
    case iPhone14ProMax = "iPhone 14 Pro Max"
    case iPhone13 = "iPhone 13"
    case iPhone13mini = "iPhone 13 mini"
    case iPhone13ProMax = "iPhone 13 Pro Max"
    case iPhone13Pro = "iPhone 13 Pro"
    case iPhone12 = "iPhone 12"
    case iPhone12mini = "iPhone 12 mini"
    case iPhone12ProMax = "iPhone 12 Pro Max"
    case iPhone12Pro = "iPhone 12 Pro"
    case iPhoneSe2ndGen = "iPhone SE (2nd gen)"
    case iPhone11ProMax = "iPhone 11 Pro Max"
    case iPhone11Pro = "iPhone 11 Pro"
    case iPhone11 = "iPhone 11"
    case iPhoneSE1stGen = "iPhone SE (1st gen)"

    // iPads
    case iPadMini6thGen = "iPad Mini (6th gen)"
    case iPad9thGen = "iPad (9th gen)"
    case iPadPro12Inch = "iPad Pro (12.9\")"
    case iPadPro11Inch = "iPad Pro (11\")"
    case iPadAir4thGen = "iPad Air (4th gen)"
    case iPadMini5thGen = "iPad Mini (5th gen)"
    case iPadAir3rdGen = "iPad Air (3rd gen)"
    case iPadPro10Inch = "iPad Pro (10.5\")"

    // MacBooks
    case MacBookAir = "MacBook Air (13.3\")"
    case MacBook = "MacBook (12\")"
    case MacBookPro = "MacBook Pro (15.4\")"

    // iMacs
    case iMacRetina24Inch = "iMac Retina (24\")"
    case iMacRetina27Inch = "iMac Retina (27\")"
    case iMacProRetina27Inch = "iMac Pro Retina (27\")"

    case custom = "Custom Size"
}

public enum SidebarLayerType: Codable, Equatable {
    case layer(NodeId)
    case group(SidebarLayerGroupData)
}

public struct SidebarLayerGroupData: Codable, Equatable {
    public let id: NodeId
    public var sortedChildren: [SidebarLayerType]
    
    public init(id: NodeId, sortedChildren: [SidebarLayerType]) {
        self.id = id
        self.sortedChildren = sortedChildren
    }
}

public typealias CommentBoxId = UUID
public typealias CommentBoxesDict = [CommentBoxId: CommentBoxData]

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

public struct GroupNodeId: Codable, Equatable, Hashable, Identifiable {
    public let id: NodeId
    
    public init(id: NodeId) {
        self.id = id
    }
    
    public init(_ id: UUID) {
        self.id = id
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
