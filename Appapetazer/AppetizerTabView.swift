//
//  AppetizerTabView.swift
//  Appapetazer
//
//  Created by Muhammadjon on 19/03/25.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                AppetizerListView()
            }
            Tab("Account", systemImage: "person") {
                AppetizerAccountView()
            }
            Tab("Order", systemImage: "bag") {
                AppetizerOrderView()
            }
        }
        .tint(.green)
    }
}

#Preview {
    AppetizerTabView()
}
