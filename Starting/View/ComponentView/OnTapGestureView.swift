//
//  OnTapGestureView.swift
//  Starting
//
//  Created by Murat Işık on 25.02.2024.
//

import SwiftUI

struct OnTapGestureView: View {
    var mobilePlatforms: [String] = ["android","ios","harmonyOS","chromeOS"]
    var appDevProgramsforAndroid: [String] = ["java","kotlin","javaScript","reactNative","dart","flutter","jetpackCompose"]
//    var appDevProgNameAndroid: [String] = ["Java","Kotlin","JavaScript","React Native","Dart","Flutter","Jetpack Compose"]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 100){
                List {
                    ForEach(mobilePlatforms,id: \.self) { name in
                        OSCardView(osName: name)
                    }.navigationTitle("Mobile Platforms")
                }
                
            }
        }
    }
}

#Preview {
    OnTapGestureView()
   // ProgramsCardView()
}

struct OSCardView: View {
    let osName: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 300, height: 150)
                .cornerRadius(30)
                .foregroundColor(Color("CardColor"))
            
            if let image = UIImage(named: osName) {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 150)
                    .clipped()
                    .cornerRadius(30)
                
                    .onTapGesture {
                        
                    }
            } else {
                Text("Image not found")
            }
        }
    }
}



struct ProgramsCardView: View {
    let programImage: String
    let programName: String
    var body: some View {
     
        ZStack{
            Rectangle()
                .frame(width: 350, height: 75)
                .cornerRadius(30)
                .foregroundColor(Color("CardColor"))
            HStack {
                Image(programImage)
                    .resizable()
                    .frame(width: 50, height: 300, alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay{
                        Circle().stroke(.blue,lineWidth: 3)
                        
                        
                    }
                .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
                
                Text(programName)
            }
        }
    }
}
