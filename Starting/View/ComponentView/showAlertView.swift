//
//  showAlertView.swift
//  Starting
//
//  Created by Murat Işık on 20.09.2023.
//

import SwiftUI

struct showAlertView: View {
    @State private var userName: String = "@gmail.com"
    @State private var password: String = ""
    @State var alert: Bool = false
    
    var body: some View {
      
        VStack {
            Text("Welcome to Trendyol")
                .bold()
            .foregroundColor(.orange)
            
            TextField("Kullanıcı Adı", text: $userName)
                .textFieldStyle(.roundedBorder)
                .lineLimit(25)
                .foregroundColor(.black)
                .padding(.horizontal, 20)
                
                
            
            SecureField("Şifre", text: $password)
                .foregroundColor(.black)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.all, 20)
            
            Button("Giriş Yap"){
                self.alert = true
            }.foregroundColor(.white)
                .frame(width: 300, height: 30)
                .background(
                    Rectangle()
                       .cornerRadius(20)
                       .foregroundColor(.orange)
                    
                )
                .clipped()
            .alert(isPresented: $alert) {
                Alert(title: Text("Bilgilerini Ruslar çalmış kardeşim HO"), dismissButton:.default(Text("SUS SUS SUS")))
                
            }
                
        }
    }
}

struct showAlertView_Previews: PreviewProvider {
    static var previews: some View {
        showAlertView()
    }
}
