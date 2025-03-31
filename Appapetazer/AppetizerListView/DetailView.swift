//
//  DetailView.swift
//  Appapetazer
//
//  Created by Muhammadjon on 31/03/25.
//

import SwiftUI

struct DetailView: View {
    
    var body: some View {
        VStack {
            Image(.foodPlaceholder)
                .resizable()
                .frame(width: .infinity, height: 300)
            Text("Headline")
                .font(.system(size: 30))
                .bold()
            
            Text("Extra nupkings")
                .foregroundStyle(.secondary)
                .bold()
            
            HStack {
                VStack {
                    Text("Calorie")
                    Text("700")
                }.padding()
                
                VStack {
                    Text("Carb")
                    Text("700")
                }.padding()
                VStack {
                    Text("Protein")
                    Text("700")
                }
                .padding()
            }
            .padding()
                
            Button {
                print("tapped")
            } label: {
                Text("Add to cart")
                    .frame(width: 300, height: 50)
                    .foregroundStyle(.white)
                    .background(Color.green)
                    
            }
            .clipShape(.buttonBorder)

            
        }
    }
}


#Preview {
    DetailView()
}
