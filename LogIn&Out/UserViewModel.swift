//
//  UserViewModel.swift
//  LogIn&Out
//
//  Created by Fatih Kenarda on 7.02.2025.
//

import Foundation

class UserViewModel: ObservableObject{
    @Published var username: String = "Misafir kullanici"
    @Published var isLoggedin: Bool = false
    
    func login() {
        self.username = "Swift kullanicisi"
        self.isLoggedin = true
    }
    
    func logout(){
        self.username = "Misafir kullanici"
        self.isLoggedin = false
    }
}
