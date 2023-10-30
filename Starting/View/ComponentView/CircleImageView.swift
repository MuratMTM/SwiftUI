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
            VStack(alignment: .center) {
               
                Image("lewiss")
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.blue,lineWidth: 10)
                    }
                    .shadow(radius: 20)
                    .padding(.bottom, 20.0)
                
                Text("Lewis Hamilton")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    
               
                    Text("England")
                        .font(.title3)
                        .fontWeight(.bold)
                       
                        
                    Image("amg")
                    .resizable()
                      
                    .padding(.top, 20.0)
                    .frame(width:280.0, height: 140.0)
                    .clipShape(Rectangle())
                    
                        
                        
                
                    
            }
        }
       
    }
    
    struct CircleImageView_Previews: PreviewProvider {
        static var previews: some View {
            CircleImageView()
                
            
            
        }
            
    }
}
