//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Квашнин on 20.04.2022.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var storageManager: StorageManager
    
    var body: some View {
        VStack {
            Text("Welcome, \(storageManager.userName)")
                .font(.title)
                .padding()
            
            ButtonView(titleButton: "Log Out", present: false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(StorageManager())
    }
}
