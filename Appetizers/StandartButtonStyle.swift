//
//  StandartButtonStyle.swift
//  Appetizers
//
//  Created by Ayberk Öz on 5.10.2023.
//

import SwiftUI

struct StandartButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
        .buttonStyle(.bordered)
        .tint(.brandPrimary)
        .controlSize(.large)
    }
}
