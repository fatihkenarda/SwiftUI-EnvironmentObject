//
//  ProfilView.swift
//  LogIn&Out
//
//  Created by Fatih Kenarda on 7.02.2025.
//

import SwiftUI

struct ProfilView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    var body: some View {
        VStack{
            Text("Kullanici: \(userViewModel.username)")
        }
    }
}

#Preview {
    ProfilView()
        .environmentObject(UserViewModel())
}
