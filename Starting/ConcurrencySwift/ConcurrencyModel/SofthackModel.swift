//
//  SofthackModel.swift
//  Starting
//
//  Created by Murat Işık on 11.01.2024.
//

import Foundation

enum CustomError: Error {
    case urlCreationFailure
    case urlResponseFailure
    case nonHTTPResponse
}

func getSymbols() async throws -> [String] {
    guard let url = URL(string: "http://localhost:8080/littlejohn/symbols")
    else{
        throw CustomError.urlCreationFailure
    }
    
    do {
        let (data, response) = try await URLSession.shared.data(from: url)
        
        // HTTP cevabını kontrol et
        if let httpResponse = response as? HTTPURLResponse {
            guard httpResponse.statusCode == 200 else {
                throw CustomError.urlResponseFailure
            }
        }
      
        return try JSONDecoder().decode([String].self, from: data )
      
    }
   
}


