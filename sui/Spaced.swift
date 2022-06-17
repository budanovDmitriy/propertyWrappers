//
//  Spaced.swift
//  sui
//
//  Created by Dmitriy Budanov on 17.06.2022.
//

import Foundation

@propertyWrapper
struct Spaced {
    
    private(set) var value = String()
    
    var wrappedValue: String {
        get {
            return value
        }
        set {
            value = newValue.components(separatedBy: .whitespacesAndNewlines)
                .filter { !$0.isEmpty }
                .joined(separator: " ")
        }
    }
    
    
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}


