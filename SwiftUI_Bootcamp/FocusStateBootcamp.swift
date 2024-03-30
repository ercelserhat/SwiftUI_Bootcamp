//
//  FocusStateBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 31.03.2024.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingFields: Hashable{
        case username
        case password
    }
    
    @State private var username: String = ""
//    @FocusState private var usernameInFocus: Bool
    
    @State private var password: String = ""
//    @FocusState private var passwordInFocus: Bool
    
    @FocusState private var fieldInFocus: OnboardingFields?
    
    var body: some View {
        VStack(spacing: 20){
            TextField("Add your name here...", text: $username)
//                .focused($usernameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .clipShape(.rect(cornerRadius: 10))
            
            SecureField("Add your password here...", text: $password)
//                .focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .clipShape(.rect(cornerRadius: 10))
            
            Button("SIGN UP "){
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid{
                    print("SIGN UP")
                } else if usernameIsValid{
//                    usernameInFocus = false
//                    passwordInFocus = true
                    fieldInFocus = .password
                } else{
//                    usernameInFocus = true
//                    passwordInFocus = false
                    fieldInFocus = .username
                }
            }
            
//            Button("TOGGLE FOCUS STATE"){
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear{
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
//                self.usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateBootcamp()
}
