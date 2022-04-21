//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Квашнин on 20.04.2022.
//

import SwiftUI

struct LoginView: View {
    @StateObject var storageManager = StorageManager()
    
    var body: some View {
        
        VStack {
            HStack {
                TextField("Enter Your Login...", text: $storageManager.userName)
                    .multilineTextAlignment(.center)
                
                Text("\(storageManager.userName.count)")
                    .foregroundColor(storageManager.userName.count <= 2 ? .black : .green)
                    .padding()
            }
            ButtonView(titleButton: "Log In", present: true)
                .disabled(storageManager.userName.count <= 2 ? true : false)
        }
        .onAppear {
            storageManager.userName = ""
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

