//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Ayberk Öz on 30.09.2023.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var isShowingDetail = false
    @State private var selectedAppatizer : Appetizer?
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            selectedAppatizer = appetizer
                            isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(isShowingDetail)
            }
            .task {
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            if isShowingDetail {
                AppetizerDetailView(appetizer: selectedAppatizer!,
                                    isShowingDetailView: $isShowingDetail)
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title,message: alert.message,dismissButton: alert.dismissButton)
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
