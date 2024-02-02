//
//  PreTabView.swift
//  Starting
//
//  Created by Murat Işık on 2.10.2023.
//

import SwiftUI

struct PreTabView: View {
    var body: some View {
       
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                
                Text("Ana Sayfa").tabItem {
                    Image(systemName: "house")
                    Text("Ana Sayfa")
                
                }.tag(TabIndex.home)
                
                Text("Hesap ve Kart").tabItem {
                    Image(systemName: "creditcard.fill")
                    Text("Hesap ve Kart")
                    
                }.tag(TabIndex.creditCards)
                
                Text("Başvurular").tabItem {
                    Image(systemName: "plus.circle")
                    Text("Başvurular")
                    
                }.tag(TabIndex.applications)
                
                Text("İşlemler").tabItem {
                    Image(systemName: "list.dash")
                    Text("İşlemler")
                    
                }.tag(TabIndex.transactions)
            }.tint(.green)
                .font(Font.headline)
                .foregroundColor(Color.indigo)
                .fontDesign(Font.Design.monospaced)
        }
    }
}
#Preview {
    PreTabView()
    
}
