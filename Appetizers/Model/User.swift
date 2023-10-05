//
//  User.swift
//  Appetizers
//
//  Created by Ayberk Öz on 5.10.2023.
//

import Foundation


struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
