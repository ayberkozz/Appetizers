//
//  ApiError.swift
//  Appetizers
//
//  Created by Ayberk Öz on 1.10.2023.
//

import Foundation

enum APError : Error {
    case invalidUrl
    case invalidResponse
    case invalidData
    case unableToComplete
}
