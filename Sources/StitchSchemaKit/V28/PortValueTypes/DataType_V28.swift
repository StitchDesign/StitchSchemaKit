//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 1/26/24.
//

import Foundation


public enum DataType_V28: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V28
//    public typealias PreviousInstance = DataType_V27.DataType
    // MARK: - endif
    
    public typealias ValueType = Equatable & StitchVersionedCodable & Hashable
 
    public enum DataType<Value: ValueType>: Hashable {
        case source(Value)
        case computed
    }
}

extension DataType_V28.DataType: StitchVersionedCodable where Value: DataType_V28.ValueType {
    public init(previousInstance:  DataType_V27.DataType<Value>) {
        switch previousInstance {
            
        case .source(let value):
            self = .source(value)
        case .computed:
            self = .computed
        }
    }
}
