//
//  F1ChartBarView.swift
//  Starting
//
//  Created by Murat Işık on 8.10.2023.
//

import SwiftUI

struct F1ChartBarView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct F1ChartBarView_Previews: PreviewProvider {
    static var previews: some View {
        F1ChartBarView()
    }
}

struct TeamChamps: Identifiable {
    var teamName: String
    var champCount: Int
    var id = UUID()
}

var data: [TeamChamps] = [
    .init(teamName: "Ferrari", champCount: 15),
    .init(teamName: "McLaren", champCount: 12),
    .init(teamName: "Mercedes", champCount: 15),
    .init(teamName: "Williams", champCount: 15),
    .init(teamName: "Lotus", champCount: 15),
    .init(teamName: "Brabham", champCount: 15),
    .init(teamName: "Renault", champCount: 15),
    .init(teamName: "Cooper", champCount: 15),
    .init(teamName: "Benetton", champCount: 15),
    .init(teamName: "Tyrrell", champCount: 15),
    .init(teamName: "Alfa Romeo", champCount: 15),
    .init(teamName: "Ferrari", champCount: 15),
    .init(teamName: "Ferrari", champCount: 15),
    .init(teamName: "Ferrari", champCount: 15),
    .init(teamName: "Ferrari", champCount: 15)
    














]
