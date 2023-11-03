//
//  CustomTabView.swift
//  Starting
//
//  Created by Murat Işık on 18.08.2023.
//

import SwiftUI

struct CustomTabView: View {
    
    @State private var selectedIndex = FormulaTabs.teams

    var body: some View {
        VStack{
            TabView(selection: $selectedIndex) {
                Text("Formula 1 Teams").tabItem { Label("Teams", systemImage: "flag.2.crossed") }.tag(1)
                Text("Formula 1 Drivers").tabItem { Label("Drivers", systemImage: "person.fill") }.tag(2)
            }.accentColor(.red)
            
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
