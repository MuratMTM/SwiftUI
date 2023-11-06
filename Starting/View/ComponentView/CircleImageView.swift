//
//  CircleImageView.swift
//  Starting
//
//  Created by Murat Işık on 11.07.2023.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        
        ZStack {
            Color.gray
                .ignoresSafeArea()
            CustomPilotCardView()
        }
        
    }
    
    struct CircleImageView_Previews: PreviewProvider {
        static var previews: some View {
            CircleImageView()
            
            
        }
        
    }
}



struct CircleImageViewTexts{
    static var imageName: String = "lewiss"
    static var pilotName: String = "Lewis Hamilton"
    static var pilotOrigin: String = "England"
    static var pilotTeamName: String = "amg"
}

struct CustomPilotCardView: View {
    var body: some View {
        VStack(alignment: .center) {
            
            Image(CircleImageViewTexts.imageName)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.blue,lineWidth: 10)
                }
                .shadow(radius: 20)
                .padding(.bottom, 20.0)
            
            Text(CircleImageViewTexts.pilotName)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
            
            
            Text(CircleImageViewTexts.pilotOrigin)
                .font(.title3)
                .fontWeight(.bold)
            
            
            Image(CircleImageViewTexts.pilotTeamName)
                .resizable()
            
                .padding(.top, 20.0)
                .frame(width:280.0, height: 140.0)
                .clipShape(Rectangle())
            
            
            
            
            
        }
    }
}
