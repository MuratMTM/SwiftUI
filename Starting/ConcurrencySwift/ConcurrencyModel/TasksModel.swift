//
//  TasksModel.swift
//  Starting
//
//  Created by Murat Işık on 6.03.2024.
//



import UIKit

 class TaskViewModel: ObservableObject {
    @Published  var formulaTeamImage: UIImage? = nil
    @Published  var formulaTeamManagerImage: UIImage? = nil
     let name: String = "Toto Wolff"
     let title: String = "CEO"
     let team: String = "Mercedes F1 Team"
     let race: String = "Formula 1"
    
    func fetchFormulaTeamImage() async {
        do {
            guard let url = URL(string: "https://cdn-2.motorsport.com/images/mgl/0RrzmDo0/s8/mercedes-f1-logo-1.jpg") else {return}
            let (data, _) = try await URLSession.shared.data(from: url,delegate: nil)
            self.formulaTeamImage = UIImage(data: data)
        } catch  {
            print(error.localizedDescription)
        }
    }
    
    func fetchFormulaTeamManagerImage() async {
        do {
            guard let url = URL(string: "https://media.sportstiger.com/media/toto-wolff-sportstiger-1687980694558-original.jpg") else {return}
            let (data, _) = try await URLSession.shared.data(from: url,delegate: nil)
            self.formulaTeamManagerImage = UIImage(data: data)
        } catch  {
            print(error.localizedDescription)
        }
    }
}

