//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Квашнин on 20.04.2022.
//

import SwiftUI

class StorageManager: ObservableObject {
    @AppStorage("isPresented") var isPresented = false
    @AppStorage("userName") var userName = ""
}
