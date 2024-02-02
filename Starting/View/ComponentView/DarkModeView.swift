//
//  DarkModeView.swift
//  Starting
//
//  Created by Murat Işık on 2.02.2024.
//

import SwiftUI

struct DarkModeView: View {
    
    let carModelImageName: String = "e63_amg"
    let carModelName: String = "Mercedes E63 AMG GT"
    let adaptiveThemeColor: String = "AdaptiveColor"
    let carModelReleaseYear: String = "(2023)"
    let quote: String = "Nobody is perfect but if you drive a Mercedes-Benz you are prettey close"
    let buyButtonText: String = "BUY"
    let carLogoImageName: String = "logoo"
    
    var body: some View {
        
        
        VStack(spacing: 10){
            Image(carModelImageName)
                .resizable()
                .frame(width: 400,height: 400)
            
            Text(carModelName)
                .font(.largeTitle)
                .bold()
                .foregroundStyle(Color(adaptiveThemeColor))
            
            Text(carModelReleaseYear)
                .font(.title)
                .bold()
                .foregroundStyle(Color(adaptiveThemeColor))
            
            Text(quote)
                .font(.title3)
                .foregroundStyle(.primary)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                HStack {
                    Text(buyButtonText)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(adaptiveThemeColor))
                        .bold()
                        .padding(.horizontal,5)
                    
                    
                    
                    Image(carLogoImageName)
                        .resizable()
                        .frame(width: 40,height: 30)
                    
                    
                }.frame(width: 150,height: 60)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                        
                            .stroke(Color(adaptiveThemeColor), lineWidth: 2)
                    )
                
                    .padding(10)
                
                
                
            })
            .padding(.vertical,30)
            
            
            Spacer()
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

#Preview {
    DarkModeView()
}
