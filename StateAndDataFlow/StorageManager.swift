//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Квашнин on 20.04.2022.
//

import SwiftUI

class StorageManager: ObservableObject {
    @AppStorage("isPresented") var isPresented = true
    @AppStorage("userName") var userName = ""
}
