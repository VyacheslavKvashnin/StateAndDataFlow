//
//  TimerButtonView.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Квашнин on 21.04.2022.
//

import SwiftUI

struct TimerButtonView: View {
    @ObservedObject var timeCounter: TimeCounter
    
    let titleButton: String
    let action: () -> Void

    var body: some View {
        
        Button(action: action) {
            Text(titleButton)
                .padding()
                .frame(width: 150)
                .font(.title)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(15)
        }
    }
}

struct TimerButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TimerButtonView(timeCounter: TimeCounter(), titleButton: "", action: {})
    }
}
