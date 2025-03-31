//
//  AppetizerListView.swift
//  Appapetazer
//
//  Created by Muhammadjon on 19/03/25.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(viewModel.appetizers, id: \.id) { appetizer  in
                    AppetizerListCell(appetizer: appetizer)
                    
                }
            }
            .navigationTitle("  Appertizers")
            .navigationBarTitleDisplayMode(.large)
            
            .onAppear {
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
            
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            }
            
        }
        
 
        
        
        
        
    }
    

#Preview {
    AppetizerListView()
}


