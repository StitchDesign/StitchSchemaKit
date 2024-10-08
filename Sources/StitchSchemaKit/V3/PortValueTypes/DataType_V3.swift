//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 1/26/24.
//

import Foundation


public enum DataType_V3: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V3
    public typealias PreviousInstance = DataType_V2.DataType
    // MARK: - endif
    
    public typealias ValueType = Equatable & StitchVersionedCodable & Hashable
 
    public enum DataType<Value: ValueType>: Hashable {
        case source(Value)
        case computed
    }
}

extension DataType_V3.DataType: StitchVersionedCodable where Value: DataType_V3.ValueType {
    public init(previousInstance: DataType_V2.PreviousInstance<Value>) {
        switch previousInstance { 
            
        case .source(let value):
            self = .source(value)
        case .computed:
            self = .computed
        }
    }
}
