//
//  StockCardView.swift
//  Starting
//
//  Created by Murat Işık on 16.11.2023.
//

import SwiftUI
import Kingfisher

struct StockCardView: View {
    var stock: Stock
    
    var body: some View {
        HStack(spacing: 130) {
            stockInfo
            stockImage
        }
        .padding()
        .background(Color.black)
        .cornerRadius(10)
        .shadow(radius: 5)
        .scaledToFit()
    }
    
    private var stockInfo: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(stock.name)
                .font(.system(size: 16, weight: .bold, design: .serif))
                .foregroundColor(.white)
            Text("Value:\(String(format: "%.2f", stock.value))₺")
                .foregroundColor(.green)
                .font(.system(size: 13, weight: .bold, design: .rounded))
            
            
        }
    }
    
    private var stockImage: some View {
        KFImage(URL(string: stock.imageName))
            .resizable()
            .frame(width: 40, height: 40, alignment: .center)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay{
                Circle().stroke(.black,lineWidth: 3)
            }
            .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
    }
}



@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, xrOS 1.0, *)
struct StockCardView_Previews: PreviewProvider {
    static var previews: some View {
        
        let sampleStock = Stock(name: "AAPL", imageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Apple_Store_logo.svg/2048px-Apple_Store_logo.svg.png", value: 223.6)
        StockCardView(stock: sampleStock)
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
struct Stock: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let value: Double
}



