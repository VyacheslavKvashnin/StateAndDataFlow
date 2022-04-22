//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Квашнин on 20.04.2022.
//

import SwiftUI

struct ButtonView: View {
    @AppStorage("isPresented") var isPresented: Bool?

    let titleButton: String
    let action: () -> Void
    
    var body: some View {
        Button (action: action) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text(titleButton)
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(titleButton: "", action: {})
    }
}
