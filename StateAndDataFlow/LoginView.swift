//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Квашнин on 20.04.2022.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var storageManager = StorageManager()
    
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                TextField("Enter Your Login", text: $storageManager.userName)
                    .multilineTextAlignment(.center)
                
                Text("\(storageManager.userName.count)")
                    .foregroundColor(storageManager.userName.count <= 2 ? .red : .green)
            }
            
            ButtonView(titleButton: "Log In", action: {
                storageManager.isPresented = true
            })
                .disabled(storageManager.userName.count <= 2 ? true : false)
               
        }
        .padding()
        .onAppear {
            storageManager.userName = ""
            storageManager.isPresented = false
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

