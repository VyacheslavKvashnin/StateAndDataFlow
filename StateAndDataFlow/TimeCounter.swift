//
//  TimeCounter.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Квашнин on 21.04.2022.
//

import Foundation
import Combine

class TimeCounter: ObservableObject {
    
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    var timer: Timer?
    var count = 3
    var titleButton = "Start"
    
    func startTimer() {
        if count > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1.0,
                target: self,
                selector: #selector(update),
                userInfo: nil,
                repeats: true)
        }
        tappedButton()
    }
    
    @objc private func update() {
        if count > 0 {
            count -= 1
        } else {
            timer?.invalidate()
            titleButton = "Reset"
        }
        objectWillChange.send(self)
    }
    
    private func tappedButton() {
        if titleButton == "Reset" {
            count = 3
            titleButton = "Start"
        } else {
            titleButton = "Wait..."
        }
        objectWillChange.send(self)
    }
}
