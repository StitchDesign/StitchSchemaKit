//
//  Patch_V2.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum Patch_V2: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V2
    public typealias PreviousInstance = Self.Patch
    // MARK: - endif
 

    public enum Patch: String, CaseIterable, Equatable {
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

}

extension Patch_V2.Patch: StitchVersionedCodable {
    public init(previousInstance: Patch_V2.PreviousInstance) {
        fatalError()
    }
}
