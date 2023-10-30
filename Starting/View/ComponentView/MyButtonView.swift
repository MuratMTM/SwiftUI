//
//  MyButtonView.swift
//  Starting
//
//  Created by Murat Işık on 3.08.2023.
//

import SwiftUI

struct MyButtonView: View {
    let buttonSymbol: String
    let buttonName: String
    let buttonColor: Color
    
    var body: some View {
        @State var binding: Bool = true
        VStack {
            Button(action: {
                
            }) {
                VStack {
                    Image(systemName: buttonSymbol).foregroundColor(Color.white).padding(.bottom, 1.0)
                    Text(buttonName)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                   
                        
                }
                .frame(width: 75, height: 75)
                .padding()
                .background(
                    Rectangle()
                       .cornerRadius(20)
                       .foregroundColor(buttonColor)
                    
                )
                
        }
//            Toggle(isOn: $binding) {
//                    Text("")
//            }.onTapGesture {
//                binding=false
//            }
        }
       
    }
    
}

struct MyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            MyButtonView(buttonSymbol: "hand.thumbsdown.fill", buttonName: "dislike", buttonColor: .red)
            MyButtonView(buttonSymbol: "hand.thumbsup.fill", buttonName: "like", buttonColor: .blue)}
    }
}
//hand.thumbsdown.fill
//hand.thumbsdown.fill
//hand.thumbsup.fill
