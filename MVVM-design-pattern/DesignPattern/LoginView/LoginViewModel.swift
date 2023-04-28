//
//  LoginViewModel.swift
//  DesignPattern
//
//  Created by Bonginkosi Tshabalala on 2023/04/24.
//

import Foundation

final class LoginViewModel {
    @Published var error: String?
    
//    init(error: ObservableObject<String?>) {
//        self.error = error
//    }
    
    func login(email: String, password: String) {
        NetworkService.shared.login(email: email, password: password) { [weak self] success in
            self?.error = success ? nil : "Inavild Credentails!!!"
        }
    }
}
