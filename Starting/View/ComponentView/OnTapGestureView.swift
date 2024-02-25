//
//  OnTapGestureView.swift
//  Starting
//
//  Created by Murat Işık on 25.02.2024.
//

import SwiftUI

struct OnTapGestureView: View {
    var mobilePlatforms: [String] = ["android","ios","harmonyOS","chromeOS"]
    
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
}

struct OSCardView: View {
    let osName: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 350, height: 150)
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
                        // Later code here!
                    }
            } else {
                Text("Image not found")
            }
        }
    }
}
