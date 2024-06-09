//
//  RegisterView.swift
//  ToDoList
//
//  Created by Emmanuel Martinez on 9/6/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(
                title: "Register",
                subtitle: "Create an account",
                angle: 15,
                background: Color.orange
            )
            Spacer()
            // Login Form
            Form {
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                }
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                FormButton(
                    radius: 10,
                    background: Color.green,
                    textColor: Color.white,
                    text: "Sign Up"
                ) {
                    viewModel.register()
                }
            }
            .background(.white)
            
            // Create Account
            VStack {
                Text("Have an account?")
                NavigationLink("Log In instead", destination: LoginView())
            }
            .padding(.bottom, 50)
            
            Spacer()
        }
        .background()
    }
}

#Preview {
    RegisterView()
}
