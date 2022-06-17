//
//  Logged.swift
//  sui
//
//  Created by Dmitriy Budanov on 17.06.2022.
//

import Foundation

@propertyWrapper
struct Logged {
    
    private(set) var value = String()
    
    var wrappedValue: String {
        get {
            getStringDate(date: Date.now)
            return value
        }
        set {
            value = newValue
        }
    }
    
    func getStringDate(date: Date)  {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d MMM HH:mm:ss"
        print(dateFormatter.string(from: date))
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}
