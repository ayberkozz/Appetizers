//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Ayberk Öz on 1.10.2023.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    static let baseUrl = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerUrl = baseUrl + "appetizers"
    
    private init() {}
    
    func getAppetizers() async throws -> [Appetizer] {
        
        guard let url = URL(string: appetizerUrl) else {
            throw APError.invalidUrl
        }
        
        let (data,_) = try await URLSession.shared.data(from: url)
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(AppetizerResponse.self, from: data).request
        } catch {
            throw APError.invalidData
        }
        
    }
}
