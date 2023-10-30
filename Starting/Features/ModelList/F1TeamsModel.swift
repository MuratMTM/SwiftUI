//
//  F1TeamsModel.swift
//  Starting
//
//  Created by Murat Işık on 19.08.2023.
//

import Foundation

struct F1Teams: Identifiable{
    let id: UUID = UUID()
    let logoName: String
    let teamName: String
}

struct TeamList {
    static let allTeams = [
        
        F1Teams(logoName: "RedBull", teamName: "RedBull Racing"),
        F1Teams(logoName: "Merso", teamName: "Mercedes AMG"),
        F1Teams(logoName: "AstonMartin", teamName: "Aston Martin"),
        F1Teams(logoName: "ScFerrari", teamName: "Scuderia Ferrari"),
        F1Teams(logoName: "Mclaren", teamName: "McLaren"),
        F1Teams(logoName: "Alpine", teamName: "Alpine"),
        F1Teams(logoName: "Williams", teamName: "Williams"),
        F1Teams(logoName: "Hass", teamName: "Hass"),
        F1Teams(logoName: "AlfaRomeo", teamName: "Alfa Romeo"),
        F1Teams(logoName: "AlphaTauri", teamName: "AlphaTauri"),
        
        
        
        
    ]
}




