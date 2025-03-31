//
//  DetailView.swift
//  Appapetazer
//
//  Created by Muhammadjon on 31/03/25.
//

import SwiftUI

struct DetailView: View {
    
    let appetaziter: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetaziter.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                Text(appetaziter.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetaziter.description)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    VStack(spacing: 5) {
                        Text("Calorie")
                            .bold()
                            .font(.caption)
                        Text("\(appetaziter.calories)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Carb")
                            .bold()
                            .font(.caption)
                        Text("\(appetaziter.carbs)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Protein")
                            .bold()
                            .font(.caption)
                        Text("\(appetaziter.protein)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                }
                
                Spacer()
                    
                Button {
                    print("tapped")
                } label: {
                    Text("$\(appetaziter.price, specifier: "%.2f") - Add to cart")
                        .font(.title3)
                        .frame(width: 260, height: 40)
                        .foregroundStyle(.white)
                        .background(Color.green)
                        
                }
                .clipShape(.buttonBorder)
                .padding(.bottom, 30)
            }
            
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .clipShape(.rect(cornerRadius: 12))
        .shadow(radius: 40)
        .overlay(alignment: .topTrailing) {
            Button {
                isShowingDetail = false
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.white)
                        .opacity(0.6)
                    
                    Image(systemName: "xmark")
                        .imageScale(.small)
                        .frame(width: 44, height: 44)
                        .foregroundStyle(.black)
                }
            }
        }
    }
}


#Preview {
    DetailView(appetaziter: MockData.sampleAppetizer,
               isShowingDetail: .constant(true))
}
