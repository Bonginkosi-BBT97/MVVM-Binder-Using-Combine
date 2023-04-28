//
//  HomeViewModel.swift
//  DesignPattern
//
//  Created by Bonginkosi Tshabalala on 2023/04/28.
//

import Foundation

final class HomeViewModel {
    @Published var welcomeMessage: String?
    
    func getLoggedInUser() {
        let user = NetworkService.shared.getLoggedInUser()
        self.welcomeMessage = "Hello, \(user.firstName)"
    }
}
