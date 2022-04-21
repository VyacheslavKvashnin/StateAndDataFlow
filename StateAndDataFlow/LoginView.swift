//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Квашнин on 20.04.2022.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var storageManager = StorageManager()
    @State private var showAlert = false
    
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                TextField("Enter Your Login", text: $storageManager.userName)
                    .multilineTextAlignment(.center)
                
                Text("\(storageManager.userName.count)")
                    .foregroundColor(storageManager.userName.count <= 2 ? .black : .green)
            }
            
            ButtonView(titleButton: "Log In", present: true)
                .disabled(storageManager.userName.count <= 2 ? true : false)
                .onTapGesture {
                    if storageManager.userName.count <= 2 {
                        showAlert.toggle()
                    }
                }
                .alert("Enter three or more characters", isPresented: $showAlert) {}
        }
        .padding()
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

