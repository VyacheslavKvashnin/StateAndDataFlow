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
        Button {
            isPresented = present
        } label: {
            HStack {
                Image(systemName: "checkmark.circle")
                Text(titleButton)
                    .font(.body)
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(titleButton: "", present: true)
    }
}
