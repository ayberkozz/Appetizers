//
//  Appetizer.swift
//  Appetizers
//
//  Created by Ayberk Öz on 30.09.2023.
//

import Foundation

struct AppetizerResponse : Codable {
    let request : [Appetizer]
}
 
struct Appetizer: Codable,Identifiable {
    let id: Int
    let imageURL: String
    let name: String
    let price: Double
    let calories: Int
    let carbs: Int
    let description: String
    let protein: Int
}

struct Mockdata {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           imageURL: "",
                                           name: "Test Appetizer",
                                           price: 9.99,
                                           calories: 99,
                                           carbs: 99,
                                           description: "This is the description for test",
                                           protein: 99)
    
    static let appetizer = [sampleAppetizer,sampleAppetizer,sampleAppetizer]
}
