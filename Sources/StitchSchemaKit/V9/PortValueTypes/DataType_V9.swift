//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 1/26/24.
//

import Foundation


public enum DataType_V9: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V9
    public typealias PreviousInstance = DataType_V8.DataType
    // MARK: - endif
    
    public typealias ValueType = Equatable & StitchVersionedCodable & Hashable
 
    public enum DataType<Value: ValueType>: Hashable {
        case source(Value)
        case computed
    }
}

extension DataType_V9.DataType: StitchVersionedCodable where Value: DataType_V9.ValueType {
    public init(previousInstance: DataType_V8.PreviousInstance<Value>) {
        switch previousInstance { 
            
        case .source(let value):
            self = .source(value)
        case .computed:
            self = .computed
        }
    }
}
