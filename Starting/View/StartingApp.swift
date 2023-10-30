//
//  StartingApp.swift
//  Starting
//
//  Created by Murat Işık on 4.07.2023.
//

import SwiftUI

@main
struct StartingApp: App {
    @State private var isDarkMode = false // Başlangıç teması

    var body: some Scene {
        WindowGroup {
            NavigationView {
                TeamsListView(isDarkMode: $isDarkMode) // isDarkMode'u TeamsListView'e ilettik
            }
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
