//
//  StockMarketTrView.swift
//  Starting
//
//  Created by Murat Işık on 16.11.2023.
//

import SwiftUI
import Kingfisher
//TF847XSNL6NXUOUZ
struct StockMarketTrView: View {
    
   
    
    
    var stocks: [Stock] = [
        Stock(name: "QNBF", imageName: stockImageUrl.finansBank.rawValue, value: 310.75),
        Stock(name: "THYO", imageName: stockImageUrl.thy.rawValue , value: 259.75),
        Stock(name: "KCHOL", imageName: stockImageUrl.koc.rawValue, value: 141.40),
        Stock(name: "FROTO", imageName: stockImageUrl.ford.rawValue , value: 819.50),
        Stock(name: "ASELS", imageName: stockImageUrl.aselsan.rawValue , value: 47.80),
        Stock(name: "AKBNK", imageName: stockImageUrl.akbank.rawValue , value: 47.80),
        Stock(name: "SISE", imageName: stockImageUrl.sısecam.rawValue , value: 49.36),
        Stock(name: "EREGL", imageName: stockImageUrl.eregli.rawValue, value: 40.46),
        Stock(name: "TCELL", imageName: stockImageUrl.turkcell.rawValue , value: 58.05),
        Stock(name: "TUPRS", imageName: stockImageUrl.tupras.rawValue , value: 150.50),
        Stock(name: "ASTOR", imageName: stockImageUrl.astor.rawValue, value: 114.90),
        
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


enum stockImageUrl: String {
    case finansBank = "https://www.qnbff.com/_assets/images/logo.png"
    case thy = "https://s3-symbol-logo.tradingview.com/turk-hava-yollari--600.png"
    case koc = "https://web-node-cdn.foreks.com/cdn/symbol-logos/BIST/KCHOL.png"
    case ford = "https://s3-symbol-logo.tradingview.com/ford-otosan--600.png"
    case aselsan = "https://s3-symbol-logo.tradingview.com/aselsan--600.png"
    case akbank = "https://www.akbank.com/SiteAssets/img/akbfa.jpg"
    case sısecam = "https://yt3.googleusercontent.com/ytc/AOPolaRKES8PJaNFzfT46PHFYf0xHkhaW4jGdwLdXvRz=s900-c-k-c0x00ffffff-no-rj"
    case eregli = "https://web-node-cdn.foreks.com/cdn/symbol-logos/BIST/EREGL.png"
    case turkcell = "https://s3-symbol-logo.tradingview.com/turkcell--600.png"
    case tupras = "https://web-node-cdn.foreks.com/cdn/symbol-logos/BIST/TUPRS.png"
    case astor = "https://fintables-prod.storage.googleapis.com/media/uploads/company-logos/ASTOR.png"
}
