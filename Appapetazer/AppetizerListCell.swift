//
//  AppetizerListCell.swift
//  Appapetazer
//
//  Created by Muhammadjon on 19/03/25.
//

import SwiftUI

struct AppetizerListCell: View {
    
    var appetizer: Appetizer
    
    var body: some View {
        HStack {
            Image(systemName: "house")
                .resizable()
                .frame(width: 100, height: 50)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(appetizer.name)
                    .font(.headline)
                Text("$8.98")
            }
            .padding(.leading)
            
        }
    }
}
