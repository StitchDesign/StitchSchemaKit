//
//  Patch_V19.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum Patch_V19: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V19
    public typealias PreviousInstance = Patch_V18.Patch
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
             mouse,
             sizePack = "Size Pack",
             sizeUnpack = "Size Unpack",
             positionPack = "Position Pack",
             positionUnpack = "Position Unpack",
             point3DPack = "Point 3D Pack",
             point3DUnpack = "Point 3D Unpack",
             point4DPack = "Point 4D Pack",
             point4DUnpack = "Point 4D Unpack",
             matrixTransformPack = "Matrix Transform Pack",
             matrixTransformUnpack = "Matrix Transform Unpack",
             closePath = "Close Path",
             moveToPack = "Move To Pack",
             lineToPack = "Line To Pack",
             curveToPack = "Curve To Pack",
             curveToUnpack = "Curve To Unpack",
             mathExpression = "Math Expression",
             qrCodeDetection = "QR Code Detection"
    }
}

extension Patch_V19.Patch: StitchVersionedCodable {
    public init(previousInstance: Patch_V19.PreviousInstance) {
        switch previousInstance {
            
        case .splitter:
            self = .splitter
        case .add:
            self = .add
        case .convertPosition:
            self = .convertPosition
        case .dragInteraction:
            self = .dragInteraction
        case .pressInteraction:
            self = .pressInteraction
        case .scrollInteraction:
            self = .scrollInteraction
        case .repeatingPulse:
            self = .repeatingPulse
        case .delay:
            self = .delay
        case .pack:
            self = .pack
        case .unpack:
            self = .unpack
        case .counter:
            self = .counter
        case .flipSwitch:
            self = .flipSwitch
        case .multiply:
            self = .multiply
        case .optionPicker:
            self = .optionPicker
        case .loop:
            self = .loop
        case .time:
            self = .time
        case .deviceTime:
            self = .deviceTime
        case .location:
            self = .location
        case .random:
            self = .random
        case .greaterOrEqual:
            self = .greaterOrEqual
        case .lessThanOrEqual:
            self = .lessThanOrEqual
        case .equals:
            self = .equals
        case .restartPrototype:
            self = .restartPrototype
        case .divide:
            self = .divide
        case .hslColor:
            self = .hslColor
        case .or:
            self = .or
        case .and:
            self = .and
        case .not:
            self = .not
        case .springAnimation:
            self = .springAnimation
        case .popAnimation:
            self = .popAnimation
        case .bouncyConverter:
            self = .bouncyConverter
        case .optionSwitch:
            self = .optionSwitch
        case .pulseOnChange:
            self = .pulseOnChange
        case .pulse:
            self = .pulse
        case .classicAnimation:
            self = .classicAnimation
        case .cubicBezierAnimation:
            self = .cubicBezierAnimation
        case .curve:
            self = .curve
        case .cubicBezierCurve:
            self = .cubicBezierCurve
        case .repeatingAnimation:
            self = .repeatingAnimation
        case .loopBuilder:
            self = .loopBuilder
        case .loopInsert:
            self = .loopInsert
        case .coreMLClassify:
            self = .coreMLClassify
        case .coreMLDetection:
            self = .coreMLDetection
        case .transition:
            self = .transition
        case .imageImport:
            self = .imageImport
        case .cameraFeed:
            self = .cameraFeed
        case .model3DImport:
            self = .model3DImport
        case .arRaycasting:
            self = .arRaycasting
        case .arAnchor:
            self = .arAnchor
        case .sampleAndHold:
            self = .sampleAndHold
        case .grayscale:
            self = .grayscale
        case .loopSelect:
            self = .loopSelect
        case .videoImport:
            self = .videoImport
        case .sampleRange:
            self = .sampleRange
        case .soundImport:
            self = .soundImport
        case .speaker:
            self = .speaker
        case .microphone:
            self = .microphone
        case .networkRequest:
            self = .networkRequest
        case .valueForKey:
            self = .valueForKey
        case .valueAtIndex:
            self = .valueAtIndex
        case .loopOverArray:
            self = .loopOverArray
        case .setValueForKey:
            self = .setValueForKey
        case .jsonObject:
            self = .jsonObject
        case .jsonArray:
            self = .jsonArray
        case .arrayAppend:
            self = .arrayAppend
        case .arrayCount:
            self = .arrayCount
        case .arrayJoin:
            self = .arrayJoin
        case .arrayReverse:
            self = .arrayReverse
        case .arraySort:
            self = .arraySort
        case .getKeys:
            self = .getKeys
        case .indexOf:
            self = .indexOf
        case .subarray:
            self = .subarray
        case .valueAtPath:
            self = .valueAtPath
        case .deviceMotion:
            self = .deviceMotion
        case .deviceInfo:
            self = .deviceInfo
        case .smoothValue:
            self = .smoothValue
        case .velocity:
            self = .velocity
        case .clip:
            self = .clip
        case .max:
            self = .max
        case .mod:
            self = .mod
        case .absoluteValue:
            self = .absoluteValue
        case .round:
            self = .round
        case .progress:
            self = .progress
        case .reverseProgress:
            self = .reverseProgress
        case .wirelessBroadcaster:
            self = .wirelessBroadcaster
        case .wirelessReceiver:
            self = .wirelessReceiver
        case .rgba:
            self = .rgba
        case .arcTan2:
            self = .arcTan2
        case .sine:
            self = .sine
        case .cosine:
            self = .cosine
        case .hapticFeedback:
            self = .hapticFeedback
        case .imageToBase64String:
            self = .imageToBase64String
        case .base64StringToImage:
            self = .base64StringToImage
        case .whenPrototypeStarts:
            self = .whenPrototypeStarts
        case .soulver:
            self = .soulver
        case .optionEquals:
            self = .optionEquals
        case .subtract:
            self = .subtract
        case .squareRoot:
            self = .squareRoot
        case .length:
            self = .length
        case .min:
            self = .min
        case .power:
            self = .power
        case .equalsExactly:
            self = .equalsExactly
        case .greaterThan:
            self = .greaterThan
        case .lessThan:
            self = .lessThan
        case .colorToHSL:
            self = .colorToHSL
        case .colorToHex:
            self = .colorToHex
        case .colorToRGB:
            self = .colorToRGB
        case .hexColor:
            self = .hexColor
        case .splitText:
            self = .splitText
        case .textEndsWith:
            self = .textEndsWith
        case .textLength:
            self = .textLength
        case .textReplace:
            self = .textReplace
        case .textStartsWith:
            self = .textStartsWith
        case .textTransform:
            self = .textTransform
        case .trimText:
            self = .trimText
        case .dateAndTimeFormatter:
            self = .dateAndTimeFormatter
        case .stopwatch:
            self = .stopwatch
        case .optionSender:
            self = .optionSender
        case .any:
            self = .any
        case .loopCount:
            self = .loopCount
        case .loopDedupe:
            self = .loopDedupe
        case .loopFilter:
            self = .loopFilter
        case .loopOptionSwitch:
            self = .loopOptionSwitch
        case .loopRemove:
            self = .loopRemove
        case .loopReverse:
            self = .loopReverse
        case .loopShuffle:
            self = .loopShuffle
        case .loopSum:
            self = .loopSum
        case .loopToArray:
            self = .loopToArray
        case .runningTotal:
            self = .runningTotal
        case .layerInfo:
            self = .layerInfo
        case .triangleShape:
            self = .triangleShape
        case .circleShape:
            self = .circleShape
        case .ovalShape:
            self = .ovalShape
        case .roundedRectangleShape:
            self = .roundedRectangleShape
        case .union:
            self = .union
        case .keyboard:
            self = .keyboard
        case .jsonToShape:
            self = .jsonToShape
        case .shapeToCommands:
            self = .shapeToCommands
        case .commandsToShape:
            self = .commandsToShape
        case .mouse:
            self = .mouse
        case .sizePack:
            self = .sizePack
        case .sizeUnpack:
            self = .sizeUnpack
        case .positionPack:
            self = .positionPack
        case .positionUnpack:
            self = .positionUnpack
        case .point3DPack:
            self = .point3DPack
        case .point3DUnpack:
            self = .point3DUnpack
        case .point4DPack:
            self = .point4DPack
        case .point4DUnpack:
            self = .point4DUnpack
        case .matrixTransformPack:
            self = .matrixTransformPack
        case .matrixTransformUnpack:
            self = .matrixTransformUnpack
        case .closePath:
            self = .closePath
        case .moveToPack:
            self = .moveToPack
        case .lineToPack:
            self = .lineToPack
        case .curveToPack:
            self = .curveToPack
        case .curveToUnpack:
            self = .curveToUnpack
        case .mathExpression:
            self = .mathExpression
        case .qrCodeDetection:
            self = .qrCodeDetection
        }
    }
}
