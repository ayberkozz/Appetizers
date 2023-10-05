//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Ayberk Öz on 2.10.2023.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order : Order
    let appetizer: Appetizer
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 320,height: 225)
            } placeholder: {
                Image("food-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 320,height: 225)
            }
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                HStack (spacing:40) {
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                    NutritionInfo(title: "Protein", value: appetizer.protein)
                }
            }
            Spacer()
            Button {
                order.items.append(appetizer)
                isShowingDetailView = false
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .modifier(StandartButtonStyle())
            .padding(.bottom, 30)
        }
        .frame(width: 300,height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button(action: {
            isShowingDetailView = false
        }, label: {
            XDismissButton()
        }),alignment: .topTrailing)
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: Mockdata.sampleAppetizer, isShowingDetailView: .constant(true))
    }
}

struct NutritionInfo : View {
    let title : String
    let value: Int
    
    var body: some View {
        VStack (spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
