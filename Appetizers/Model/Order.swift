//
//  Order.swift
//  Appetizers
//
//  Created by Ayberk Öz on 5.10.2023.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items : [Appetizer] = []
    
    var totalPrice : Double {
        items.reduce(0) { $0 + $1.price}
    }
    
    func DeleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
