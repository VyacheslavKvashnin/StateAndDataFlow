//
//  TimerButtonView.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Квашнин on 21.04.2022.
//

import SwiftUI

struct TimerButtonView: View {
    @ObservedObject var timeCounter: TimeCounter
    
    var body: some View {
        Button(action: { timeCounter.startTimer() }) {
            Text(timeCounter.titleButton)
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
        TimerButtonView(timeCounter: TimeCounter())
    }
}
