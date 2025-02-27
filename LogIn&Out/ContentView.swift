//
//  ContentView.swift
//  LogIn&Out
//
//  Created by Fatih Kenarda on 7.02.2025.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hosgeliniz, \(userViewModel.username)")
                
                if(userViewModel.isLoggedin){
                    NavigationLink(destination: ProfilView() ){
                                            Text("Profil Sayfasına Git")
                                                .padding()
                                                .background(Color.blue)
                                                .foregroundColor(.white)
                                                .cornerRadius(10)
                                        }
                    
                    .padding()
                    
                    Button("Çıkış Yap"){
                        userViewModel.logout()
                    }
                }
                
                else{
                    Button("Giris Yapiniz"){
                        userViewModel.login()
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
            }
            
        }
        
    }
}

#Preview {
            ContentView()
                        .environmentObject(UserViewModel())

}
