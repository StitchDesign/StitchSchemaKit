//
//  Patch_V16.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum Patch_V16: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V16
    public typealias PreviousInstance = Patch_V15.Patch
    // MARK: - endif
 

    public enum Patch: String, CaseIterable, Equatable {
        case splitter = "Value",
             add = "Add",
             convertPosition = "Convert Position",
             dragInteraction = "Drag Interaction",
             pressInteraction = "Press Interaction",
             scrollInteraction = "Scroll Interaction",
             repeatingPulse = "Repeating Pulse",
             delay = "Delay",
             pack = "Pack",
             unpack = "Unpack",
             counter = "Counter",
             flipSwitch = "Switch",
             multiply = "Multiply",
             optionPicker = "Option Picker",
             loop = "Loop",
             time = "Time",
             deviceTime = "Device Time",
             location = "Location",
             random = "Random",
             greaterOrEqual = "Greater or Equal",
             lessThanOrEqual = "Less Than or Equal",
             equals = "Equals",
             restartPrototype = "Restart Prototype",
             divide = "Divide",
             hslColor = "HSL Color",
             or = "Or",
             and = "And",
             not = "Not",
             springAnimation = "Spring Animation",
             popAnimation = "Pop Animation",
             bouncyConverter = "Bouncy Converter",
             optionSwitch = "Option Switch",
             pulseOnChange = "Pulse on Change",
             pulse = "Pulse",
             classicAnimation = "Classic Animation",
             cubicBezierAnimation = "Cubic Bezier Animation",
             curve = "Curve",
             cubicBezierCurve = "Cubic Bezier Curve",
             repeatingAnimation = "Repeating Animation",
             loopBuilder = "Loop Builder",
             loopInsert = "Loop Insert",
             coreMLClassify = "CoreML Classify",
             coreMLDetection = "CoreML Detection",
             transition = "Transition",
             imageImport = "Image Import",
             cameraFeed = "Camera Feed",
             model3DImport = "Model 3D Import",
             arRaycasting = "Array Casting",
             arAnchor = "AR Anchor",
             sampleAndHold = "Sample and Hold",
             grayscale = "Grayscale",
             loopSelect = "Loop Select",
             videoImport = "Video Import",
             sampleRange = "Sample Range",
             soundImport = "Sound Import",
             speaker = "Speaker",
             microphone = "Microphone",
             networkRequest = "Network Request",
             valueForKey = "Value for Key",
             valueAtIndex = "Value at Index",
             loopOverArray = "Loop Over Array",
             setValueForKey = "Set Value for Key",
             jsonObject = "JSON Object",
             jsonArray = "JSON Array",
             arrayAppend = "Array Append",
             arrayCount = "Array Count",
             arrayJoin = "Array Join",
             arrayReverse = "Array Reverse",
             arraySort = "Array Sort",
             getKeys = "Getkeys",
             indexOf = "Index Of",
             subarray = "Subarray",
             valueAtPath = "Value at Path",
             deviceMotion = "Device Motion",
             deviceInfo = "Device Info",
             smoothValue = "Smooth Value",
             velocity = "Velocity",
             clip = "Clip",
             max = "Max",
             mod = "Mod",
             absoluteValue = "Absolute Value",
             round = "Round",
             progress = "Progress",
             reverseProgress = "Reverse Progress",
             wirelessBroadcaster = "Wireless Broadcaster",
             wirelessReceiver = "Wireless Receiver",
             rgba = "Rgba",
             arcTan2 = "Arc Tan 2",
             sine = "Sine",
             cosine = "Cosine",
             hapticFeedback = "Haptic Feedback",
             imageToBase64String = "Image to Base64 String",
             base64StringToImage = "Base64 String to Image",
             whenPrototypeStarts = "When Prototype Starts",
             soulver = "Soulver",
             optionEquals = "Option Equals",
             subtract = "Subtract",
             squareRoot = "Square Root",
             length = "Length",
             min = "Min",
             power = "Power",
             equalsExactly = "Equals Exactly",
             greaterThan = "Greater Than",
             lessThan = "Less Than",
             colorToHSL = "Color to HSL ",
             colorToHex = "Color to Hex",
             colorToRGB = "Color to RGB",
             hexColor = "Hex Color",
             splitText = "Split Text",
             textEndsWith = "Text Ends With",
             textLength = "Text Length",
             textReplace = "Text Replace",
             textStartsWith = "Text Starts With",
             textTransform = "Text Transform",
             trimText = "Trim Text",
             dateAndTimeFormatter = "Date and Time Formatter",
             stopwatch = "Stopwatch",
             optionSender = "Option Sender",
             any = "Any",
             loopCount = "Loop Count",
             loopDedupe = "Loop Dedupe",
             loopFilter = "Loop Filter",
             loopOptionSwitch = "Loop Option Switch",
             loopRemove = "Loop Remove",
             loopReverse = "Loop Reverse",
             loopShuffle = "Loop Shuffle",
             loopSum = "Loop Sum",
             loopToArray = "Loop to Array",
             runningTotal = "Running Total",
             layerInfo = "Layer Info",
             triangleShape = "Triangle Shape",
             circleShape = "Circle Shape",
             ovalShape = "Oval Shape",
             roundedRectangleShape = "Rounded Rectangle Shape",
             union = "Union",
             keyboard = "Keyboard",
             jsonToShape = "JSON to Shape",
             shapeToCommands = "Shape to Commands",
             commandsToShape = "Commands to Shape",
             mouse = "mouse",
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
             moveToPack = "Move to Pack",
             lineToPack = "Line to Pack",
             curveToPack = "Curve to Pack",
             curveToUnpack = "Curve to Unpack",
             mathExpression = "Math Expression",
             qrCodeDetection = "QR Code Detection"
    }
}

extension Patch_V16.Patch: StitchVersionedCodable {
    public init(previousInstance: Patch_V16.PreviousInstance) {
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
