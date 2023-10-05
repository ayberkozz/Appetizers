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
    
    static let orderItemOne     = Appetizer(id: 0001,
                                            imageURL: "",
                                            name: "Test Appetizer One",
                                            price: 9.99,
                                            calories: 99,
                                            carbs: 99,
                                            description: "This is the description for my appetizer. It's yummy.",
                                            protein: 99)
    
    static let orderItemTwo     = Appetizer(id: 0002,
                                            imageURL: "",
                                            name: "Test Appetizer Two",
                                            price: 9.99,
                                            calories: 99,
                                            carbs: 99,
                                            description: "This is the description for my appetizer. It's yummy.",
                                            protein: 99)
    
    static let orderItemThree   = Appetizer(id: 0003,
                                            imageURL: "",
                                            name: "Test Appetizer Three",
                                            price: 9.99,
                                            calories: 99,
                                            carbs: 99,
                                            description: "This is the description for my appetizer. It's yummy.",
                                            protein: 99)
    
    static let orderItems       = [orderItemOne, orderItemTwo, orderItemThree]
}


