//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 1/22/24.
//

import Foundation

typealias NodeId = UUID
typealias NodeIdSet = Set<NodeId>

struct NodeIOCoordinate: Hashable, Equatable, Codable {
    var portId: Int
    var nodeId: NodeId
}

enum NodeKind {
    case patch(Patch), layer(Layer), group
}

enum Patch: String, CaseIterable, Codable, Equatable {
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

enum Layer: String, CaseIterable, Codable, Equatable {
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

enum UserVisibleType: String, CaseIterable, Codable, Equatable, Hashable {
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

enum InteractionType: String, Equatable, Codable {
    case drag, press, scroll
}

// A given interaction patch node can only be assigned to a single layer at a time, but we can have n-many interaction patch nodes (all of the same type, even) attached to a single layer.
// Hence for `InteractionsDict`, which lives on a layer node, we map a single interaction type (e.g. `.drag`) to a SET of interaction patch node ids.
typealias InteractionsDict = [InteractionType: NodeIdSet]

enum SplitterType: String, Equatable, Codable, CaseIterable {
    case inline = "Inline", // ie regular splitter: input and output
         // add GroupNodeId assoc-val ?
         input = "Input", // ie groupIutput node: output only
         output = "Output" // ie groupOutput node: input only
}
