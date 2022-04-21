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
    let present: Bool
    
    var body: some View {
        Button (action: { isPresented = present }) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text(titleButton)
            }
            .padding()
            .font(.body)
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(15)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(titleButton: "", present: true)
    }
}
