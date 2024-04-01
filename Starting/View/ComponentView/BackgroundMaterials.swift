//
//  BackgroundMaterials.swift
//  Starting
//
//  Created by Murat Işık on 22.03.2024.
//

import SwiftUI

struct BackgroundMaterials: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
                RoundedRectangle( cornerRadius: 10)
                    .frame(width: 50, height: 4)
                
                    .padding()
                
                Spacer()
                
                
                
                
            }
            .frame(height: 300)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            
        }.ignoresSafeArea()
        
            .background(
                Image("papara4")
                    .resizable()
                    .frame(height: 870)
            )
    }
}

#Preview {
    BackgroundMaterials()
}
