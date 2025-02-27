//
//  LogIn_OutApp.swift
//  LogIn&Out
//
//  Created by Fatih Kenarda on 7.02.2025.
//

import SwiftUI

@main
struct LogIn_OutApp: App {
    @StateObject var userViewModel = UserViewModel() //UserViewModel ilk kez olusturuldu bu yuzden StateObject kullanildi.
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userViewModel) //Tum viewlere iletildi.
        }
    }
}
