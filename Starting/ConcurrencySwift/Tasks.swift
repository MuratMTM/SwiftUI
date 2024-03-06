//
//  Tasks.swift
//  Starting
//
//  Created by Murat Işık on 6.03.2024.
//

import SwiftUI

struct Tasks: View {
    
    @StateObject private var tasksViewModel: TaskViewModel = TaskViewModel()
    var body: some View {
        
        NavigationView {
            VStack{
                    if let formulaTeamManagerImage = tasksViewModel.formulaTeamManagerImage {
                        Image(uiImage: formulaTeamManagerImage)
                            .resizable()
                            .frame(width: 350, height: 400)
                            .cornerRadius(20)
                    }
                    
                Text(tasksViewModel.name)
                        .font(.title2)
                        .fontWeight(.bold)
                Text(tasksViewModel.title)
                        .font(.footnote)
                Text(tasksViewModel.team)
                        .font(.italic(.caption)())
                        .fontWeight(.light)
                    
                    
                    if let formulaTeamImage = tasksViewModel.formulaTeamImage {
                        Image(uiImage: formulaTeamImage)
                            .resizable()
                            .frame(width: 350, height: 150)
                            .cornerRadius(20)
                    }
                }.onAppear {
                    Task{
                       
                        await tasksViewModel.fetchFormulaTeamManagerImage()
                    }
                    Task{
                        await tasksViewModel.fetchFormulaTeamImage()
                    }
                }.navigationTitle(tasksViewModel.race)
        }
        
    }
    
    }

#Preview {
    Tasks()
}
