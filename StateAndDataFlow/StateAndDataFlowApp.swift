//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Квашнин on 20.04.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var storageManager = StorageManager()
    
    var body: some Scene {
        WindowGroup {
            if storageManager.isPresented {
                MainView()
                    .environmentObject(storageManager)
            } else {
                LoginView()
                    .environmentObject(storageManager)
            }
        }
    }
}
