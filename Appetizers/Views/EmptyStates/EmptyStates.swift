//
//  EmptyStates.swift
//  Appetizers
//
//  Created by Ayberk Öz on 5.10.2023.
//

import SwiftUI

struct EmptyStates: View {
    
    let imageName : String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y:-50)
        }
    }
}

#Preview {
    EmptyStates(imageName: "empty-order", message: "Default Message")
}
