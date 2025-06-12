//
//  Patch_V31.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum Patch_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = Patch_V30.Patch
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
             springFromSettlingDurationAndDampingRatio = "Settling Duration and Damping Ratio Converter"
    }
}

extension Patch_V31.Patch: StitchVersionedCodable {
    public init(previousInstance: Patch_V31.PreviousInstance) {
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

extension Patch_V31.Patch {
    public static let titleDisplay = "Patch"
    
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
            // TODO: assume that rawValue for all patches added will have properly capitalized display-value, and so just use `default: return self.rawValue`
        case .sizePack, .sizeUnpack, .positionPack, .positionUnpack, .point3DPack, .point3DUnpack, .point4DPack, .point4DUnpack, .transformPack, .transformUnpack, .closePath, .moveToPack, .lineToPack, .curveToPack, .curveToUnpack, .mathExpression, .springFromDurationAndBounce, .springFromResponseAndDampingRatio, .springFromSettlingDurationAndDampingRatio:
            return self.rawValue
        }
    }
    
    public var aiNodeDescription: String {
        switch self {
        case .add:
            return "Adds two numbers together."
        case .subtract:
            return "Subtracts one number from another."
        case .multiply:
            return "Multiplies two numbers together."
        case .divide:
            return "Divides one number by another."
        case .mod:
            return "Calculates the remainder of a division."
        case .power:
            return "Raises a number to the power of another."
        case .squareRoot:
            return "Calculates the square root of a number."
        case .absoluteValue:
            return "Finds the absolute value of a number."
        case .round:
            return "Rounds a number to the nearest integer."
        case .max:
            return "Finds the maximum of two numbers."
        case .min:
            return "Finds the minimum of two numbers."
        case .length:
            return "Calculates the length of a collection."
        case .arcTan2:
            return "Calculates the arctangent of a quotient."
        case .sine:
            return "Calculates the sine of an angle."
        case .cosine:
            return "Calculates the cosine of an angle."
        case .clip:
            return "Clips a value to a specified range."
        case .or:
            return "Logical OR operation."
        case .and:
            return "Logical AND operation."
        case .not:
            return "Logical NOT operation."
        case .equals:
            return "Checks if two values are equal."
        case .equalsExactly:
            return "Checks if two values are exactly equal."
        case .greaterThan:
            return "Checks if one value is greater than another."
        case .greaterOrEqual:
            return "Checks if one value is greater or equal to another."
        case .lessThan:
            return "Checks if one value is less than another."
        case .lessThanOrEqual:
            return "Checks if one value is less than or equal to another."
        case .splitText:
            return "Splits text into parts."
        case .textLength:
            return "Calculates the length of a text string."
        case .textReplace:
            return "Replaces text within a string."
        case .textStartsWith:
            return "Checks if text starts with a specific substring."
        case .textEndsWith:
            return "Checks if text ends with a specific substring."
        case .textTransform:
            return "Transforms text into a different format."
        case .trimText:
            return "Removes whitespace from the beginning and end of a text string."
        case .time:
            return "Returns number of seconds and frames since a prototype started."
        case .dateAndTimeFormatter:
            return "creates a human-readable date/time value from a time in seconds."
        case .stopwatch:
            return "measures elapsed time in seconds."
        case .delay:
            return "delays a value by a specified number of seconds."
        case .delayOne:
            return "delays incoming value by 1 frame."
        case .imageImport:
            return "imports an image asset."
        case .videoImport:
            return "imports a video asset."
        case .soundImport:
            return "imports an audio asset."
        case .qrCodeDetection:
            return "detects the value of a QR code from an image or video."
        case .coreMLClassify:
            return "performs image classification on an image or video."
        case .coreMLDetection:
            return "detects objects in an image or video."
        case .cameraFeed:
            return "creates a live camera feed."
        case .deviceInfo:
            return "gets info of the running device."
        case .hapticFeedback:
            return "generates haptic feedback."
        case .keyboard:
            return "handles keyboard input."
        case .mouse:
            return "handles mouse input."
        case .microphone:
            return "handles microphone input."
        case .speaker:
            return "handles audio speaker output."
        case .dragInteraction:
            return "detects a drag interaction."
        case .pressInteraction:
            return "detects a press interaction."
        case .location:
            return "gets the current location."
        case .circleShape:
            return "generates a circle shape."
        case .ovalShape:
            return "generates an oval shape."
        case .roundedRectangleShape:
            return "generates a rounded rectangle shape."
        case .triangleShape:
            return "generates a triangle shape."
        case .shapeToCommands:
            return "takes a shape as input, outputs the commands to generate the shape."
        case .commandsToShape:
            return "generates a shape from a given loop of shape commands."
        case .transformPack:
            return "packs inputs into a transform."
        case .transformUnpack:
            return "unpacks a transform."
        case .moveToPack:
            return "packs a position into a MoveTo shape command."
        case .lineToPack:
            return "packs a position into a LineTo shape command."
        case .closePath:
            return "ClosePath shape command."
        case .base64StringToImage:
            return "converts a base64 string to an image."
        case .imageToBase64String:
            return "converts an image to a base64 string."
        case .colorToHSL:
            return "converts a color to HSL components."
        case .colorToRGB:
            return "converts a color to RGB components."
        case .colorToHex:
            return "converts a color to a hex string."
        case .hslColor:
            return "generates a color from HSL components."
        case .hexColor:
            return "converts a hex string to a color."
        case .grayscale:
            return "applies grayscale effect to image/video."
        case .splitter:
            return "stores a value."
        case .random:
            return "generates a random value."
        case .progress:
            return "calculates progress value."
        case .reverseProgress:
            return "calculates inverse progress."
        case .convertPosition:
            return "converts position values between layers."
        case .velocity:
            return "measures velocity over time."
        case .soulver:
            return "evaluates plain-text math expressions."
        case .whenPrototypeStarts:
            return "fires pulse when prototype starts."
        case .valueForKey:
            return "extracts a value from JSON by key."
        case .valueAtIndex:
            return "extracts a value from JSON by index."
        case .valueAtPath:
            return "extracts a value from JSON by path."
        case .pack:
            return "creates a new value from inputs."
        case .unpack:
            return "splits a value into components."
        case .sampleAndHold:
            return "stores a value until new one is received."
        case .sampleRange:
            return "samples a range of values."
        case .smoothValue:
            return "smoothes input value."
        case .runningTotal:
            return "continuously sums values."
        case .jsonToShape:
            return "creates a Shape from JSON."
        case .jsonArray:
            return "creates a JSON array from inputs."
        case .jsonObject:
            return "creates a JSON object from key-value pairs."
        case .bouncyConverter:
            return "Converts bounce and duration values to spring animation parameters."
        case .loopBuilder:
            return "Creates a new loop with specified values."
        case .loopFilter:
            return "Filters elements in a loop based on a condition."
        case .loopSelect:
            return "Selects specific elements from a loop."
        case .loopCount:
            return "Counts the number of elements in a loop."
        case .loopDedupe:
            return "Removes duplicate elements from a loop."
        case .loopOptionSwitch:
            return "Switches between different loop options."
        case .loopOverArray:
            return "Iterates over elements in an array."
        case .loopToArray:
            return "Converts a loop into an array."
        case .transition:
            return "Controls transitions between states."
        case .optionEquals:
            return "Checks if an option equals a specific value."
        case .curve:
            return "Defines an animation curve."
        case .cubicBezierCurve:
            return "Creates a cubic bezier curve for animations."
        case .any:
            return "Returns true if any input is true."
        case .rgba:
            return "Creates a color from RGBA components."
        case .arrayJoin:
            return "Joins array elements into a string."
        case .getKeys:
            return "Gets all keys from an object."
        case .indexOf:
            return "Gets the index of an element in an array."
        case .positionUnpack:
            return "Unpacks a position into X and Y components."
        case .point3DUnpack:
            return "Unpacks a 3D point into X, Y, and Z components."
        case .point4DUnpack:
            return "Unpacks a 4D point into X, Y, Z, and W components."
        case .mathExpression:
            return "Evaluates a mathematical expression."
        case .setValueForKey:
            return "Sets a value for a specified key in an object."
        case .springAnimation:
            return "Creates an animation based off of the physical model of a spring"
        case .popAnimation:
            return " Animates a value using a spring effect."
        case .classicAnimation:
            return "Animates a number using a standard animation curve."
        case .cubicBezierAnimation:
            return "Creates custom animation curves by defining two control points"
        case .repeatingAnimation:
            return "Repeatedly animates a number."
        case .pulse:
            return "Outputs a pulse event when it's toggled on or off."
        case .pulseOnChange:
            return "The Pulse On Change node outputs a pulse if an input value comes in that i different from the specified value."
        case .repeatingPulse:
            return "A node that will fire a pulse at a defined interval."
        case .union:
            return "Combines two or more shapes to generate a new shape."
        case .arrayAppend:
            return " This node appends to the end of the provided array."
        case .arrayCount:
            return "This node returns the number of items in an array."
        case .subarray:
            return "Returns a subarray from a given array."
        case .arraySort:
            return "This node sorts the array in ascending order."
        case .arrayReverse:
            return "This node reverses the order of the items in the array."
        case .scrollInteraction:
            return "Adds scroll interaction to a specified layer."
        case .arAnchor:
            return "Creates an AR anchor from a 3D model and an ARTransform. Represents the positio and orientation of a 3D item in the physical environment."
        case .arRaycasting:
            return "Returns a 3D location in physical space that corresponds to a given 2D location o the screen."
        case .deviceTime:
            return "Returns the current time of the device your prototype is running on."
        case .deviceMotion:
            return "Returns the acceleration and rotation values of the device the patch is running on."
        case .wirelessBroadcaster:
            return "Sends a value to a selected Wireless Receiver node. Useful for organizing large complicated projects by replacing cables between patches."
        case .wirelessReceiver:
            return "-Used with the Wireless Broadcaster node to route values across the graph. Useful fo organizing large, complicated projects."
        case .restartPrototype:
            return "A node that will restart the state of your prototype. All inputs and outputs of th nodes on your graph will be reset."
        case .optionPicker:
            return "The Option Picker node lets you cycle through and select one of N inputs to use a the output. Multiple inputs can be added and removed from the node, and it can be configured to work with a variety of node types."
        case .optionSender:
            return "Used to pick an output to send a value to. Multiple value types can be used wit this node."
        case .optionSwitch:
            return "Used to control two or more states with an index value. N number of inputs can b added to the node."
        case .counter:
            return "Counter that can be incremented, decremented, or set to a specified value. Starts at 0."
        case .flipSwitch:
            return "A node that will flip between an On and Off state whenever a pulse is received."
        case .loop:
            return "Generate a loop of indices. For example, an input of 3 outputs a loop of [0, 1, 2]."
        case .loopInsert:
            return "Insert a new value at a particular index in a loop."
        case .networkRequest:
            return "The Network Request node allows you to make HTTP GET and POST requests to an endpoint. Results are returned as JSON."
        case .loopRemove:
            return "Removes a value from a specified index in a loop."
        case .loopReverse:
            return "Reverse the order of the values in a loop"
        case .loopShuffle:
            return "Randomly reorders the values in a loop."
        case .loopSum:
            return "Calculates the sum of every value in a loop."
        case .layerInfo:
            return "Returns information about a specified layer."
        case .sizePack:
            return "Packs two Layer Dimension inputs to a single Layer Size output."
        case .sizeUnpack:
            return "Unpacks a single Layer Size input to two Layer Size outputs."
        case .positionPack:
            return "Packs two Number inputs to a single Position output."
        case .point3DPack:
            return "Packs three Number inputs to a single Point3D output."
        case .point4DPack:
            return "Packs four Number inputs to a single Point4D output."
        case .curveToPack:
            return "Packs Point, CurveTo and CurveFrom position inputs into a CurveTo ShapeCommand."
        case .curveToUnpack:
            return "Unpack packs CurveTo ShapeCommand into a Point, CurveTo and CurveFrom position outputs."
        case .springFromDurationAndBounce:
            return "Convert duration and bounce values to mass, stiffness and damping for a Spring Animation node."
        case .springFromResponseAndDampingRatio:
            return "Convert response and damping ratio to mass, stiffness and damping for a Spring Animation node."
        case .springFromSettlingDurationAndDampingRatio:
            return "Convert settling duration and damping ratio to mass, stiffness and damping for a Spring Animation node."
        }
    }
}
