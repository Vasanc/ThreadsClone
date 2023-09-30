//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by Vasan on 29/09/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Spacer()
            Image("ThreadsLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 120,height: 120)
                .padding()
            
            VStack{
                TextField("Enter your Email", text: $email)
                    .modifier(ThreadsTextFieldModifier())
                    .textInputAutocapitalization(.none)
                
                SecureField("Enter your Password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your Username", text: $username)
                    .modifier(ThreadsTextFieldModifier())
                
                
                TextField("Enter your Fullname", text: $fullname)
                    .modifier(ThreadsTextFieldModifier())
            }
            Button{
                
            }label: {
                Text("Login")
                    .modifier(ButtonFieldModifier())
                    
            }
            
            Spacer()
            
            Divider()
            
            Button{
                dismiss()
            }label: {
                HStack(spacing:3) {
                    Text("Already have an account?")
                    Text("Sign In").fontWeight(.semibold)
                }
                .font(.footnote)
                .foregroundStyle(.black)
                
            }.padding(.vertical, 16)
        }
    }
}

#Preview {
    RegistrationView()
}
