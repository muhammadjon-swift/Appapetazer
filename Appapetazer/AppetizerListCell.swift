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
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .frame(width: 120, height: 90)
                .clipShape(.buttonBorder)
            VStack(alignment: .leading, spacing: 8) {
                Text(appetizer.name)
                    .font(.headline)
                Text("$ \(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
            
        }
    }
}
