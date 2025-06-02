//
//  Patch_V32.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum Patch_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = Patch_V31.Patch
    // MARK: - endif
 

    public enum Patch: String, CaseIterable, Hashable {
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
             transformPack = "Transform Pack",
             transformUnpack = "Transform Unpack",
             closePath = "Close Path",
             moveToPack = "Move To Pack",
             lineToPack = "Line To Pack",
             curveToPack = "Curve To Pack",
             curveToUnpack = "Curve To Unpack",
             mathExpression = "Math Expression",
             qrCodeDetection = "QR Code Detection",
             delayOne,
             springFromDurationAndBounce = "Duration and Bounce Converter",
             springFromResponseAndDampingRatio = "Response and Damping Ratio Converter",
             springFromSettlingDurationAndDampingRatio = "Settling Duration and Damping Ratio Converter",
             javascript
    }
}

extension Patch_V32.Patch: StitchVersionedCodable {
    public init(previousInstance: Patch_V32.PreviousInstance) {
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
        case .transformPack:
            self = .transformPack
        case .transformUnpack:
            self = .transformUnpack
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
        case .delayOne:
            self = .delayOne
        case .springFromDurationAndBounce:
            self = .springFromDurationAndBounce
        case .springFromResponseAndDampingRatio:
            self = .springFromResponseAndDampingRatio
        case .springFromSettlingDurationAndDampingRatio:
            self = .springFromSettlingDurationAndDampingRatio
        }
    }
}


extension Patch_V32.Patch {
    public func defaultDisplayTitle() -> String {
        switch self {
        case .splitter:
            return "Value"
        case .flipSwitch:
            return "Switch"
        case .arcTan2:
            return "Arc Tan 2"
        case .coreMLClassify:
            return "Image Classification"
        case .coreMLDetection:
            return "Object Detection"
        case .hslColor:
            return "HSL Color"
        case .colorToHSL:
            return "Color to HSL"
        case .rgba:
            return "RGB Color"
        case .colorToRGB:
            return "Color to RGB"
        case .arRaycasting:
            return "Raycasting"
        case .base64StringToImage:
            return "Base64 to Image"
        case .imageToBase64String:
            return "Image to Base64"
        case .whenPrototypeStarts:
            return "On Prototype Start"
        case .jsonToShape:
            return "JSON to Shape"
        case .jsonArray:
            return "JSON Array"
        case .jsonObject:
            return "JSON Object"
        case .arAnchor:
            return "AR Anchor"
        case .add:
            return "Add"
        case .convertPosition:
            return "Convert Position"
        case .dragInteraction:
            return "Drag Interaction"
        case .pressInteraction:
            return "Press Interaction"
        case .scrollInteraction:
            return "Legacy Scroll Interaction"
        case .repeatingPulse:
            return "Repeating Pulse"
        case .delay:
            return "Delay"
        case .pack:
            return "Pack"
        case .unpack:
            return "Unpack"
        case .counter:
            return "Counter"
        case .multiply:
            return "Multiply"
        case .optionPicker:
            return "Option Picker"
        case .loop:
            return "Loop"
        case .time:
            return "Time"
        case .deviceTime:
            return "Device Time"
        case .location:
            return "Location"
        case .random:
            return "Random"
        case .greaterOrEqual:
            return "Greater or Equal"
        case .lessThanOrEqual:
            return "Less Than or Equal"
        case .equals:
            return "Equals"
        case .restartPrototype:
            return "Restart Prototype"
        case .divide:
            return "Divide"
        case .or:
            return "Or"
        case .and:
            return "And"
        case .not:
            return  "Not"
        case .springAnimation:
            return "Spring Animation"
        case .popAnimation:
            return "Pop Animation"
        case .bouncyConverter:
            return "Bouncy Converter"
        case .optionSwitch:
            return "Option Switch"
        case .pulseOnChange:
            return "Pulse on Change"
        case .pulse:
            return "Pulse"
        case .classicAnimation:
            return "Classic Animation"
        case .cubicBezierAnimation:
            return "Cubic Bezier Animation"
        case .curve:
            return "Curve"
        case .cubicBezierCurve:
            return "Cubic Bezier Curve"
        case .repeatingAnimation:
            return "Repeating Animation"
        case .loopBuilder:
            return "Loop Builder"
        case .loopInsert:
            return "Loop Insert"
        case .transition:
            return "Transition"
        case .imageImport:
            return "Image Import"
        case .cameraFeed:
            return "Camera Feed"
        case .sampleAndHold:
            return "Sample and Hold"
        case .grayscale:
            return "Grayscale"
        case .loopSelect:
            return "Loop Select"
        case .videoImport:
            return "Video Import"
        case .sampleRange:
            return "Sample Range"
        case .soundImport:
            return "Sound Import"
        case .speaker:
            return "Speaker"
        case .microphone:
            return "Microphone"
        case .networkRequest:
            return "Network Request"
        case .valueForKey:
            return "Value for Key"
        case .valueAtIndex:
            return "Value at Index"
        case .loopOverArray:
            return "Loop Over Array"
        case .setValueForKey:
            return "Set Value for Key"
        case .arrayAppend:
            return "Array Append"
        case .arrayCount:
            return "Array Count"
        case .arrayJoin:
            return "Array Join"
        case .arrayReverse:
            return "Array Reverse"
        case .arraySort:
            return "Array Sort"
        case .getKeys:
            return "Get Keys"
        case .indexOf:
            return "Index Of"
        case .subarray:
            return "Sub Array"
        case .valueAtPath:
            return "Value at Path"
        case .deviceMotion:
            return "Device Motion"
        case .deviceInfo:
            return "Device Info"
        case .smoothValue:
            return "Smooth Value"
        case .velocity:
            return "Velocity"
        case .clip:
            return "Clip"
        case .max:
            return "Max"
        case .mod:
            return "Mod"
        case .absoluteValue:
            return "Absolute Value"
        case .round:
            return "Round"
        case .progress:
            return "Progress"
        case .reverseProgress:
            return "Reverse Progress"
        case .wirelessBroadcaster:
            return "Wireless Broadcaster"
        case .wirelessReceiver:
            return "Wireless Receiver"
        case .sine:
            return "Sine"
        case .cosine:
            return "Cosine"
        case .hapticFeedback:
            return "Haptic Feedback"
        case .soulver:
            return "Soulver"
        case .optionEquals:
            return "Option Equals"
        case .subtract:
            return "Subtract"
        case .squareRoot:
            return "Square Root"
        case .length:
            return "Length"
        case .min:
            return "Min"
        case .power:
            return "Power"
        case .equalsExactly:
            return "Equals Exactly"
        case .greaterThan:
            return "Greater Than"
        case .lessThan:
            return "Less Than"
        case .colorToHex:
            return "Color to Hex"
        case .hexColor:
            return "Hex Color"
        case .splitText:
            return "Split Text"
        case .textEndsWith:
            return "Text Ends With"
        case .textLength:
            return "Text Length"
        case .textReplace:
            return "Text Replace"
        case .textStartsWith:
            return "Text Starts With"
        case .textTransform:
            return "Text Transform"
        case .trimText:
            return "Trim Text"
        case .dateAndTimeFormatter:
            return "Date And Time Formatter"
        case .stopwatch:
            return "Stopwatch"
        case .optionSender:
            return "Option Sender"
        case .any:
            return "Any"
        case .loopCount:
            return "Loop Count"
        case .loopDedupe:
            return "Loop Dedupe"
        case .loopFilter:
            return "Loop Filter"
        case .loopOptionSwitch:
            return "Loop Option Switch"
        case .loopRemove:
            return "Loop Remove"
        case .loopReverse:
            return "Loop Reverse"
        case .loopShuffle:
            return "Loop Shuffle"
        case .loopSum:
            return "Loop Sum"
        case .loopToArray:
            return "Loop to Array"
        case .runningTotal:
            return "Running Total"
        case .layerInfo:
            return "Layer Info"
        case .triangleShape:
            return "Triangle Shape"
        case .circleShape:
            return "Circle Shape"
        case .ovalShape:
            return "Oval Shape"
        case .roundedRectangleShape:
            return "Rounded Rectangle Shape"
        case .union:
            return "Union"
        case .keyboard:
            return "Keyboard"
        case .shapeToCommands:
            return "Shape to Commands"
        case .commandsToShape:
            return "Commands to Shape"
        case .mouse:
            return "Mouse"
        case .qrCodeDetection:
            return "QR Code Detection"
        case .delayOne:
            return "Delay 1"
        case .javascript:
            return "JavaScript"
            // TODO: assume that rawValue for all patches added will have properly capitalized display-value, and so just use `default: return self.rawValue`
        case .sizePack, .sizeUnpack, .positionPack, .positionUnpack, .point3DPack, .point3DUnpack, .point4DPack, .point4DUnpack, .transformPack, .transformUnpack, .closePath, .moveToPack, .lineToPack, .curveToPack, .curveToUnpack, .mathExpression, .springFromDurationAndBounce, .springFromResponseAndDampingRatio, .springFromSettlingDurationAndDampingRatio:
            return self.rawValue
        }
    }
}
