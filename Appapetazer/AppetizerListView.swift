//
//  AppetizerListView.swift
//  Appapetazer
//
//  Created by Muhammadjon on 19/03/25.
//

import SwiftUI

struct AppetizerListView: View {
    
    @State var appetizers: [Appetizer] = []
    
    var body: some View {
        NavigationStack {
            List(appetizers, id: \.id) { appetizer  in
                AppetizerListCell(appetizer: appetizer)
                
            }
        }
        .navigationTitle("  Appertizers")
        .navigationBarTitleDisplayMode(.large)
        
        .onAppear {
            getAppetizers()
        }
    }
    
    func getAppetizers() {
        DispatchQueue.main.async {
            NetworkManager.shared.getAppetizers { result in
                switch result {
                case .success(let success):
                    self.appetizers = success
                    print(success)
                case .failure(let failure):
                    print(failure.localizedDescription)
                }
            }
        }
  
    }
}

#Preview {
    AppetizerListView()
}


