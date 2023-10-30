//
//  TextFieldView.swift
//  Starting
//
//  Created by Murat Işık on 8.08.2023.
//

import SwiftUI



struct TextFieldView: View {
    @State var password = "1234"
    @State var someText = "initial text"
    var body: some View {

        
        VStack {
            Text("Welcome Murat")
                .fontWeight(.medium)
                .foregroundColor(.blue)
            
            SecureField("enter your password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(.blue)
                .opacity(20)
                .colorMultiply(.gray)
                .navigationTitle("Info")
                .keyboardType(.numberPad)
                .fixedSize()
                
            Text("password entered: \(password)")
            .italic()
           
            
            TextField("Enter some text", text: $someText)
            .padding()
            .keyboardType(.numberPad)
            
            
            
            
           
        }
    
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
