//
//  File.swift
//
//
//  Created by Christian J Clampitt on 3/5/24.
//

import Foundation

public enum StitchBlendMode_V7: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V7
    public typealias PreviousInstance = StitchBlendMode_V6.StitchBlendMode
    
    // MARK: - endif
 
    // https://developer.apple.com/documentation/swiftui/blendmode
    public enum StitchBlendMode: String, Equatable, Codable, CaseIterable, Sendable {
        case normal = "Normal"
        
        // Darkening
        case darken = "Darken"
        case multiply = "Multiply"
        case colorBurn = "Colorburn"
        case plusDarker = "Plus Darker"
        
        // Lightening
        case lighten = "Lighten"
        case screen = "Screen"
        case colorDodge = "Color Dodge"
        case plusLighter = "Plus Lighter"
        
        // Adding contrast
        case overlay = "Overlay"
        case softLight = "Softlight"
        case hardLight = "Hardlight"
        
        // Inverting
        case difference = "Difference"
        case exclusion = "Exclusion"
        // Mixing color components
        case hue = "Hue"
        case saturation = "Saturation"
        case color = "Color"
        case luminosity = "Luminosity"
        
        // Accessing porter-duff modes
        case sourceAtop = "Source Atop"
        case destinationOver = "Destination Over"
        case destinationOut = "Destination Out"
    }
}

extension StitchBlendMode_V7.StitchBlendMode: StitchVersionedCodable {
    public init(previousInstance: StitchBlendMode_V7.PreviousInstance) {
        switch previousInstance {
        case .normal:
            self = .normal
        case .darken:
            self = .darken
        case .multiply:
            self = .multiply
        case .colorBurn:
            self = .colorBurn
        case .plusDarker:
            self = .plusDarker
        case .lighten:
            self = .lighten
        case .screen:
            self = .screen
        case .colorDodge:
            self = .colorDodge
        case .plusLighter:
            self = .plusLighter
        case .overlay:
            self = .overlay
        case .softLight:
            self = .softLight
        case .hardLight:
            self = .hardLight
        case .difference:
            self = .difference
        case .exclusion:
            self = .exclusion
        case .hue:
            self = .hue
        case .saturation:
            self = .saturation
        case .color:
            self = .color
        case .luminosity:
            self = .luminosity
        case .sourceAtop:
            self = .sourceAtop
        case .destinationOver:
            self = .destinationOver
        case .destinationOut:
            self = .destinationOut
        }
    }
}
