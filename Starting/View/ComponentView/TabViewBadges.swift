//
//  TabViewBadges.swift
//  Starting
//
//  Created by Murat Işık on 2.04.2024.
//

import SwiftUI

struct TabViewBadges: View {
    var body: some View {
        
        TabView {
            
            Text("Durum")
                .tabItem {
                    Image(systemName: "plus.message")
                    Text("Durum")
                }
            
            Text("Aramalar")
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Aramalar")
                }.badge(2)
            ListSwipeActions()
                .tabItem {
                    Image(systemName: "message.fill")
                    Text("Sohbetler")
                    
                }.badge(5)
            
            Text("Ayarlar")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Ayarlar")
                }.badge(1)
            
        }.tabViewStyle(DefaultTabViewStyle())
        
        
    }
}

#Preview {
    TabViewBadges()
}
