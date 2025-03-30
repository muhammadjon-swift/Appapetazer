//
//  AppetizerListViewModel.swift
//  Appapetazer
//
//  Created by Muhammadjon on 23/03/25.
//


import SwiftUI

 final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
//    @Published var isLoading = false
//    @Published var isShowingDetail = false
//    @Published var selectedAppetizer: Appetizer?
     
     func getAppetizers() {
         
             NetworkManager.shared.getAppetizers { [weak self] result in
                 guard let self = self else { return }
                 DispatchQueue.main.async {
                     switch result {
                     case .success(let success):
                         self.appetizers = success
                         print(success)
                     case .failure(let failure):
                         switch failure {
                         case .invalidURL:
                             self.alertItem = AlertContext.invalidURL
                         case .invalidResponse:
                             self.alertItem = AlertContext.invalidResponse
                         case .invalidData:
                             self.alertItem = AlertContext.invalidData
                         case .unableToComplete:
                             self.alertItem = AlertContext.unableToComplete
                         }
                     }
                 }
           
             
         }
     }
         
         //    func getAppetizers() {
         //        isLoading = true
         //        NetworkManager.shared.getAppetizers { [self] result in
         //            DispatchQueue.main.async {
         //                isLoading = false
         //                switch result {
         //                case .success(let appetizers):
         //                    self.appetizers = appetizers
         //
         //                case .failure(let error):
         //                    switch error {
         //                    case .invalidResponse:
         //                        alertItem = AlertContext.invalidResponse
         //
         //                    case .invalidURL:
         //                        alertItem = AlertContext.invalidURL
         //
         //                    case .invalidData:
         //                        alertItem = AlertContext.invalidData
         //
         //                    case .unableToComplete:
         //                        alertItem = AlertContext.unableToComplete
         //                    }
         //                }
         //            }
         //        }
         //    }
         
         //    func getAppetizers() {
         //        isLoading = true
         //
         //        Task {
         //            do {
         //                appetizers = try await NetworkManager.shared.getAppetizers()
         //                isLoading = false
         //            } catch {
         //                if let apError = error as? APError {
         //                    switch apError {
         //                        case .invalidURL:
         //                            alertItem = AlertContext.invalidURL
         //                        case .invalidResponse:
         //                            alertItem = AlertContext.invalidResponse
         //                        case .invalidData:
         //                            alertItem = AlertContext.invalidData
         //                        case .unableToComplete:
         //                            alertItem = AlertContext.unableToComplete
         //                    }
         //                } else {
         //                    alertItem = AlertContext.invalidResponse
         //                }
         //
         //                isLoading = false
         //            }
         //        }
         //    }
     }
