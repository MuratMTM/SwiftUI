//
//  StockCardView.swift
//  Starting
//
//  Created by Murat Işık on 16.11.2023.
//

import SwiftUI
import Foundation

struct StockCardView: View {
    var stock: Stock
    var body: some View {
        VStack {
                  Image(stock.imageName)
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(height: 100)
                      .cornerRadius(10)
                  
                  Text(stock.name)
                      .font(.headline)
                      .padding(.top, 5)
                  
                  Text("Value: $\(String(format: "%.2f", stock.value))")
                      .foregroundColor(.green) // You can customize the color based on positive or negative values
                      .padding(.top, 5)
              }
              .padding()
              .background(Color.white)
              .cornerRadius(10)
              .shadow(radius: 5)
    }
}

#Preview {
    
    let sampleStock = Stock(name: "AAPL", imageName: "apple_logo", value: 150.25)
    StockCardView(stock: sampleStock)
               
}


struct Stock {
    let name: String
    let imageName: String
    let value: Double
}

