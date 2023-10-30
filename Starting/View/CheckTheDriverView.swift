//
//  CheckTheDriverView.swift
//  Starting
//
//  Created by Murat Işık on 22.08.2023.
//

import SwiftUI
import Kingfisher

struct CheckTheDriverView: View {
    var drivers: DriversModel = DriversList.allDrivers[0]
    var body: some View {
        VStack{
            ZStack {
                
                KFImage(URL(string: drivers.driverImage))
                    .resizable()
                    .frame(height: 300)
                    .cornerRadius(20)
                    .padding(.horizontal)
                
                
                
            }
            
            
            HStack(spacing:20) {
                
                ZStack {
                    Circle()
                        .scaledToFit()
                        .frame(height: 40)
                        .foregroundColor(.gray)
                    Text(drivers.driverNumber)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                }
                
                VStack {
                    Text(drivers.driverName)
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(drivers.driverTeamName)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                KFImage(URL(string: drivers.driverCountryFlagImage))
                    .resizable()
                    .frame(width: 50, height: 30)
                    .cornerRadius(5)
                
                
                
            }
            HStack(spacing: 20){
                Text("WorldChamp: \(drivers.driverChampCount ?? "0")")
                    .foregroundColor(.white)
                    .font(.body)
                    .fontWeight(.bold)
                
                
                Text(("\(drivers.driverPoint) PTS"))
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.bold)
                
                
                
                
                
            }
            Link(destination:URL(string: "https://www.youtube.com/shorts/udZWZBasjmk")!, label: {
                Text("Watch Now")
                    .multilineTextAlignment(.center)
                    .bold()
                    .font(.title2)
                    .frame(width: 160, height: 50)
                    .background(Color(.yellow))
                    .foregroundColor(.purple)
                    .cornerRadius(20)
                    
                
            })
           
            
        }
    }
}

struct CheckTheDriverView_Previews: PreviewProvider {
    static var previews: some View {
        CheckTheDriverView()
    }
}
