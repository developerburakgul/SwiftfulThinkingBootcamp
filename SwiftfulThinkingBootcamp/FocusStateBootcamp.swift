//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 11.01.2025.
//

import SwiftUI

// birden fazla text field olduğunda her biri için focusstate oluşturma bir tane oluştur type olarak enum var geç

struct FocusStateBootcamp: View {
    enum OnboardingField: Hashable {
    case name,password
    }
    @State private var userName: String = ""
//    @FocusState private var usernameInFocus: Bool
    @State private var password: String = ""
//    @FocusState private var passwordInFocus: Bool
    @FocusState private var fieldInFocus: OnboardingField?
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $userName)
//                .focused($usernameInFocus)
                .focused($fieldInFocus, equals: .name)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.2))
                .cornerRadius(10)
 
            //MARK: - SecureField
            SecureField("Add your password here...", text: $password)
//                .focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.2))
                .cornerRadius(10)
            
            Button {
                let userNameISValid = !userName.isEmpty
                let passwordISValid = !password.isEmpty
                
                if userNameISValid && passwordISValid {
                    print("User name: \(userName), password: \(password)")
                } else if userNameISValid {
//                    usernameInFocus = false
//                    passwordInFocus = true
                    fieldInFocus = .password
                } else {
//                    passwordInFocus = true
//                    usernameInFocus = false
                    fieldInFocus = .name
                }
            } label: {
                Text("SIGN UP ")
            }

            
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus =
//            }
//        }
    }
}

#Preview {
    FocusStateBootcamp()
}
