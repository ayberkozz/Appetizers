//
//  OrderView.swift
//  Appetizers
//
//  Created by Ayberk Öz on 30.09.2023.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order : Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.DeleteItems)
                    }
                    .listStyle(.plain)
                    Button {
                        print("tapped")
                    } label: {
//                        APButton(title: "\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandartButtonStyle())
                    .padding(.bottom,35)
                }
                if order.items.isEmpty {
                    EmptyStates(imageName: "empty-order", message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Order")
        }
    }
    
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

