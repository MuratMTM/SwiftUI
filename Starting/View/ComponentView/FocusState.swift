//
//  FocusState.swift
//  Starting
//
//  Created by Murat Işık on 2.04.2024.


import SwiftUI

struct FocusStates: View {
    
    enum OnboardingField: Hashable {
        case userName
        case password
    }
    private let thyBackgroundImage: String = "thywallpaper"
    private let thyLogo: String = "newThyLogo"
    private let userNameTextField: String = "username"
    private let passwordSecureFieldText: String = "password"
    private let loginButtonText: String = "Giriş"
    
    @State private var userName: String = ""
    @State private var password: String = ""
    @FocusState private var fieldInFocus: OnboardingField?
    
    
    var body: some View {
        ZStack{
            
            Image(thyBackgroundImage)
                .resizable()
                .frame(width: 400, height: 900)
            
            VStack(alignment:.center) {
                
                Image(thyLogo)
                    .resizable()
                    .frame(width: 250, height: 100)
                
                VStack(spacing: 25){
                    
                    TextField(userNameTextField, text: $userName)
                        .padding(15)
                        .focused($fieldInFocus, equals: .userName)
                        .background(Color.gray.brightness(0.3))
                        .frame(maxWidth: .infinity)
                        .cornerRadius(20)
                    
                    
                    SecureField(passwordSecureFieldText, text: $password)
                        .padding(15)
                        .focused($fieldInFocus, equals: .password)
                        .background(Color.gray.brightness(0.3))
                        .frame(maxWidth: .infinity)
                        .cornerRadius(20)
                    
                    
                    Button(loginButtonText) {
                        let userNameIsValid = !userName.isEmpty
                        let passwordIsValid = !password.isEmpty
                        
                        if userNameIsValid && passwordIsValid {
                            print("Fields are  not empty")
                        }
                        else if userNameIsValid {
                            fieldInFocus = .password
                        }
                        else {
                            fieldInFocus = .userName
                        }
                    }
                    .frame(width: 120, height: 40)
                    .foregroundColor(.white)
                    .background(Color.gray.gradient)
                    .cornerRadius(10)
                }.padding(.vertical,150)
            }.padding()
        }
    }
}

#Preview {
    FocusStates()
}
