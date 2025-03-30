//
//  ActivityIndicator.swift
//  Appapetazer
//
//  Created by Muhammadjon on 31/03/25.
//


import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.green
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}


struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            ActivityIndicator()
            
//            ProgressView()
//                .progressViewStyle(CircularProgressViewStyle(tint: .green))
//                .scaleEffect(2)
        }
    }
}
