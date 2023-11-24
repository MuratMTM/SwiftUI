//
//  StockMarketView.swift
//  Starting
//
//  Created by Murat Işık on 15.11.2023.
//

import SwiftUI

struct StockMarketView: View {
    var body: some View {
        
            
                
        VStack{
            
                ZStack{
                    Rectangle()
                        .frame(width: 350, height: 100)
                        .cornerRadius(20)
                        .colorMultiply(.secondary)
                   
                    VStack {
                        Text(StockNames.tupras.rawValue)
                            .padding()
                            .font(.title2)
                        .fontWeight(.bold)
                        
                        Text("151.70 TRY")
                            .padding(.bottom, 20)
                    }
                    
                    
                    
                }
                
                
            }
    
       
    }
}

#Preview {
    StockMarketView()
}


enum StockNames: String{
    case tupras = "Tüpraş"
    case ford = "Ford"
    case aselsan = "Aselsan"
    
}
