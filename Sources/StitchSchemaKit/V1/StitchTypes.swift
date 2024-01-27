//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 1/22/24.
//

import Foundation
import SwiftUI

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
