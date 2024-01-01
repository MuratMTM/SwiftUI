//
//  BasicSheetView.swift
//  Starting
//
//  Created by Murat Işık on 1.01.2024.
//

import SwiftUI

struct BasicSheetView: View {
    
    @State var isSheetPresented: Bool = false
    @State var year: String = "2023"
    @State var yearImage: String = "moon.circle.fill"
    
    let nextYear: String = "2024"
    let welcomeMessage: String = "Welcome to 2024!"
    let newYearImage: String = "sun.haze.circle.fill"
    let ButtonName: String = "Next Year"
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea(.all)
            
            VStack{
                
                HStack {
                    Text(year)
                        .font(.largeTitle)
                    Image(systemName: yearImage)
                        .resizable()
                        .frame(width:30,height: 30)
                    
                }
                Button(action: {
                    year = nextYear
                    yearImage = newYearImage
                    isSheetPresented.toggle()
                }
                       , label: {
                    Text(ButtonName)
                        .font(.title3)
                        .fontWeight(.bold)
                }).sheet(isPresented: $isSheetPresented){
                    HStack {
                        
                        Text(welcomeMessage)
                        Image(systemName: yearImage)
                            .resizable()
                            .frame(width:30,height: 30)
                    }
                }
                .foregroundColor(.purple)
                .buttonStyle(.bordered)
                
                
            }
        }
        
    }
}

#Preview {
    BasicSheetView()
}
