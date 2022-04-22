//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Квашнин on 20.04.2022.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var storageManager: StorageManager
    @StateObject private var timeCounter = TimeCounter()
    
    var body: some View {
        VStack(spacing: 100) {
            Text("Welcome, \(storageManager.userName)")
                .font(.title)
                .padding()
            
            Spacer()
            
            Text("\(timeCounter.count)")
                .font(.largeTitle)
                .bold()
            
            TimerButtonView(timeCounter: timeCounter, titleButton: timeCounter.titleButton) {
                timeCounter.startTimer()
            }
            
            Spacer()
            
            ButtonView(titleButton: "Log Out") {
                storageManager.isPresented = false
            }
        }
        .padding(30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(StorageManager())
    }
}
