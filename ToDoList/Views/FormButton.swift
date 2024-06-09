//
//  FormButtonView.swift
//  ToDoList
//
//  Created by Emmanuel Martinez on 9/6/24.
//

import SwiftUI

struct FormButton: View {
    let radius: Double
    let background: Color
    let textColor: Color
    let text: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: radius)
                    .foregroundColor(background)
                Text(text)
                    .foregroundColor(textColor)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    FormButton(
        radius: 20, background: Color.blue, textColor: Color.white, text: "Log In"
    ) {
        // Action
    }
}
