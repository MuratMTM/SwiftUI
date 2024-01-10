//
//  ContentMenuView.swift
//  Starting
//
//  Created by Murat Işık on 10.01.2024.
//

import SwiftUI

struct ContextMenuView: View {
    @State var isPinned: Bool = false
    @State var isFavorited: Bool = false
    let pin: String = "Pin"
    let fav: String = "Favorite"
    let share: String = "Share"
    let title: String = "Quick Notes"
    
    let frameWorks: String = "SwiftUI\nFlutter\nReact Native\nJetpack Compose"
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                .frame(width: 300,height: 200)
                .foregroundStyle(.yellow)
            
            VStack(alignment: .leading) {
                HStack(spacing: 20){
                    Text(title)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        
                    
                    Image(systemName: "note")
                        .font(.largeTitle)
                    
                    Image(systemName: isPinned ? itemLogo.pinLogo.rawValue : isFavorited ? itemLogo.starLogo.rawValue : itemLogo.circleLogo.rawValue)
                        .padding(.horizontal)
                    
                }.padding(.vertical,5)
                Text(frameWorks)
                    .font(.headline)
                    .fontWeight(.light)
            }.padding()
        }.contextMenu(ContextMenu(menuItems: {
            Button(action: {
                isPinned.toggle()
            }, label: {
                Label(pin, systemImage: itemLogo.pinLogo.rawValue)
            })
            Button(action: {
                isFavorited.toggle()
            }, label: {
                Label(fav, systemImage: itemLogo.starLogo.rawValue )
            })
            Button(action: {
                
            }, label: {
                Label(share, systemImage: itemLogo.shareLogo.rawValue)
            })
        }))
            
            
    }
}

#Preview {
    ContextMenuView()
}


enum itemLogo: String {
    case pinLogo = "pin.fill"
    case starLogo = "star.circle.fill"
    case shareLogo =  "square.and.arrow.up.circle.fill"
    case circleLogo = "circle"
    
    
}
