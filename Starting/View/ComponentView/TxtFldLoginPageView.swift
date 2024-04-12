//
//  TxtFldLoginPageView.swift
//  Starting
//
//  Created by Murat Işık on 11.01.2024.
//

import SwiftUI

struct TxtFldLoginPageView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack{
            Image("books")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("profilePhoto")
                    .resizable()
                    .frame(width: 200,height: 200, alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay{
                        Circle().stroke(.yellow,lineWidth: 5)
                    }
                    .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
                
                Text("kesitOkur")
                    .fontWeight(.bold)
                    .italic()
                    .font(.largeTitle)
                    .padding(.bottom,80)
                
                TextField("Kullanıcı Adı", text: $username)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
                    .submitLabel(.next)
                    .onSubmit {
                        print("submit label is added.")
                    }
                
                SecureField("Şifre", text: $password)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
                    .submitLabel(.go)
                    .onSubmit {
                        print("now,user can acces the account.")
                    }
                
                Spacer()
                
                Button(action: {
                    
                    print("Kullanıcı Adı: \(username), Şifre: \(password)")
                }) {
                    Text("Giriş Yap")
                        .frame(maxWidth: 200)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.yellow.opacity(50))
                        .cornerRadius(20)
                    
                }.padding()
                Spacer()
            }.padding(.all, 10)
        }
    }
    
}

#Preview {
    TxtFldLoginPageView()
}
