//
//  WorkerCardModel.swift
//  Starting
//
//  Created by Murat Işık on 25.07.2023.
//

import Foundation

struct WorkerCardModel: Identifiable{
    let id: UUID = UUID()
    let url: String
    let workerName: String
    let jobName: String
    let firmName: String
    let age: Int
    
}

extension WorkerCardModel  {
    
    
    static let workers = [
        WorkerCardModel(url:"https://docs.kariyer.net/candidate/000/015/915/avatar/1591541420211008100811176.jpg?filesec=XdsV1VzBKiPzRwcAz5MUUiRR5Kyh7BDMh28XJ25FPbFxIRvrhqhvAgnLMiL4cXsaEh7f%2FskJmK6AH%2FUR01KRadBfmySsJ6Y2!e!",workerName: "Murat Işık", jobName: "IOS Developer", firmName: "Google", age: 24),
        WorkerCardModel(url:"https://cdn.armut.com/UserPics/tr:w-325,h-325/900373a1-8528-4d74-93e7-65f577c2347f.jpeg",workerName: "Özgür Kaan Ünal", jobName: "Electrical Engineer", firmName:"Tesla", age: 27),
        WorkerCardModel(url:"https://cdn.armut.com/ProfilePics/tr:w-350,h-350/a0e2ddf4-cb73-4c65-b519-051ba5d1e4ae.jpeg",workerName: "Emre Doğukan Özen", jobName: "Physcist", firmName: "SpaceX", age: 26),
]
        }

