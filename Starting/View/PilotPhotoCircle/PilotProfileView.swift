//
//  PilotProfileView.swift
//  Starting
//
//  Created by Murat Işık on 13.07.2023.
//

import SwiftUI
import Kingfisher

struct PilotProfileView: View {
    let pilotName: String
    let photoUrl: String
    let country: String
    let teamLogoUrl: String
    let circleColor: Color
    
    var body: some View {
        ZStack {
            Color.yellow
            .ignoresSafeArea()
            
            VStack() {
               
                ProfileImageCircularView(image: photoUrl, circleColor: circleColor, imageWidth: 300, imageHeight: 300)
                
                Text(pilotName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    
               
                    Text(country)
                        .font(.title3)
                        .fontWeight(.bold)
                       
                        
                KFImage(URL(string: teamLogoUrl))
                    .resizable()
                      
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                    .frame(width:280.0, height: 140.0)
                    .clipShape(Rectangle())
                
               
                
//                HStack{
//                    MyButtonView(buttonSymbol: "hand.thumbsdown.fill", buttonName: "dislike", buttonColor: .red)
//                    MyButtonView(buttonSymbol: "hand.thumbsup.fill", buttonName: "like", buttonColor: .blue)}
            }
                
            }
        }
    }


struct PilotProfileView_Previews: PreviewProvider {
    static var previews: some View {
        PilotProfileView(pilotName:"Charles Leclerc", photoUrl: "https://cdn-1.motorsport.com/images/amp/6xEm9or0/s1000/charles-leclerc-scuderia-ferra.jpg", country:"Monaco", teamLogoUrl: "https://assets.turbologo.com/blog/tr/2019/10/19134602/ferrari-logo-illustration-958x575.jpg", circleColor: .black)
        
       
    }
}

struct ProfileImageCircularView: View {
    let image: String
    let circleColor: Color
    let imageWidth: Double
    let imageHeight: Double
    var body: some View {
        KFImage(URL(string: image))
            .resizable()
            .frame(width: imageWidth, height: imageHeight, alignment: .center)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay{
                Circle().stroke(circleColor,lineWidth: 3)
            }
            .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
    }
}
