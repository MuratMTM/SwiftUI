//
//  StockMarketTrView.swift
//  Starting
//
//  Created by Murat Işık on 16.11.2023.
//

import SwiftUI
import Kingfisher

struct StockMarketTrView: View {
    var stocks: [Stock] = [
        Stock(name: "QNBF", imageName: "https://www.qnbff.com/_assets/images/logo.png", value: 310.75),
        Stock(name: "THYO", imageName: "https://s3-symbol-logo.tradingview.com/turk-hava-yollari--600.png", value: 259.75),
        Stock(name: "KCHOL", imageName: "https://web-node-cdn.foreks.com/cdn/symbol-logos/BIST/KCHOL.png", value: 141.40),
        Stock(name: "FROTO", imageName: "https://s3-symbol-logo.tradingview.com/ford-otosan--600.png", value: 819.50),
        Stock(name: "ASELS", imageName: "https://s3-symbol-logo.tradingview.com/aselsan--600.png", value: 47.80),
        Stock(name: "AKBNK", imageName: "https://www.akbank.com/SiteAssets/img/akbfa.jpg", value: 47.80),
        Stock(name: "SISE", imageName: "https://yt3.googleusercontent.com/ytc/AOPolaRKES8PJaNFzfT46PHFYf0xHkhaW4jGdwLdXvRz=s900-c-k-c0x00ffffff-no-rj", value: 49.36),
        Stock(name: "EREGL", imageName: "https://web-node-cdn.foreks.com/cdn/symbol-logos/BIST/EREGL.png", value: 40.46),
        Stock(name: "TCELL", imageName: "https://s3-symbol-logo.tradingview.com/turkcell--600.png", value: 58.05),
        Stock(name: "TUPRS", imageName: "https://web-node-cdn.foreks.com/cdn/symbol-logos/BIST/TUPRS.png", value: 150.50),
        Stock(name: "ASTOR", imageName: "https://fintables-prod.storage.googleapis.com/media/uploads/company-logos/ASTOR.png", value: 114.90),
        
    ]
    var body: some View {
        NavigationView {
            
            
            ScrollView {
                LazyVStack(alignment: .leading) {
                    ForEach(stocks) { card in
                        StockCardView(stock: card)
                            .padding(10)
                    }
                }.padding(.horizontal, 10)
            }.navigationTitle("Stocks")
        }
        
        
        
    }
}

#Preview {
    StockMarketTrView()
}


