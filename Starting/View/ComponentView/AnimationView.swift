//
//  AnimationView.swift
//  Starting
//
//  Created by Murat Işık on 30.11.2023.
//

import SwiftUI

struct AnimationView: View {
    private let title: String = "Animations"
    @State private var scaleValue: Double = 0.75
    var body: some View {
        VStack{
            
            Text(title)
                .font(.largeTitle)
                .underline()
                .bold()
            Circle()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(scaleValue)
                .animation(.bouncy, value: scaleValue)
                .padding(.all,10)
            
            
            HStack {
                
                Button("Smaller"){
                    while (scaleValue > 0.2){
                        scaleValue -= 0.15
                    }
                    
                }.buttonStyle(.bordered)
                
                Button("Bigger") {
                    while(scaleValue <= 1){
                        scaleValue += 0.15
                    }
                    
                    
                    
                }.buttonStyle(.borderedProminent)

            }
            
            
        }
    }
}

#Preview {
    AnimationView()
}
