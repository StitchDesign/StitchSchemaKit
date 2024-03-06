//
//  File.swift
//
//
//  Created by Christian J Clampitt on 3/5/24.
//

import Foundation

public enum StitchBlendMode_V3: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V3
    public typealias PreviousInstance = Self.StitchBlendMode
    
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

extension StitchBlendMode_V3.StitchBlendMode: StitchVersionedCodable {
    public init(previousInstance: StitchBlendMode_V3.PreviousInstance) {
        fatalError()
    }
}
