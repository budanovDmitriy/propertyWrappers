//
//  Uppercased.swift
//  sui
//
//  Created by Dmitriy Budanov on 17.06.2022.
//

import Foundation

@propertyWrapper
struct Uppercased {
    
    private(set) var value = String()
    
    var wrappedValue: String {
        get {
            return value
        }
        set {
            value =  newValue.components(separatedBy: ".")
                .map { element in
                    element.capitalized
                }
                .joined(separator: ".")
                
        }
    }
    
   
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}
