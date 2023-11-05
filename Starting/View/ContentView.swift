//
//  ContentView.swift
//  Starting
//
//  Created by Murat Işık on 4.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        ZStack {
            Color.secondary.ignoresSafeArea()
            CardInfoView()
            
        }.frame(width: 300,height: 200)
            .cornerRadius(20)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
struct CardInfoView: View{
    
    var body: some View{
        VStack(alignment: .center) {
            Text(CardInfoText.welcomeMessage)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.green)
                .padding(2.0)
            
            Text(CardInfoText.explanation)
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.pink)
                .padding(.bottom,5)
            
            
            HStack {
                Text(CardInfoText.title)
                    .font(.headline)
                    .foregroundColor(Color.indigo)
                    .fontWeight(.bold)
                Text(CardInfoText.name)
            }
            
            
        }
    }
}


struct CardInfoText {
    static let welcomeMessage: String = "Welcome to SoftHack"
    static let explanation: String = "This is our mobile application company."
    static let title: String = "CEO -"
    static  let name: String = "Murat Işık"
}
