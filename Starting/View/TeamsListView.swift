//
//  TeamsListView.swift
//  Starting
//
//  Created by Murat Işık on 25.08.2023.
//

import SwiftUI
import Kingfisher

struct TeamsListView: View {
    
    var teams: [F1Teams] = TeamList.allTeams
    
    @Environment(\.colorScheme) var colorScheme
    @Binding var isDarkMode: Bool // @Binding kullanarak isDarkMode ekledik
    
    var body: some View {
        
        VStack {
            Toggle(isOn: $isDarkMode) {
                Text("Dark Mode")
            }
            .padding()
            
            NavigationView {
                List(teams, id: \.id) { team in
                    NavigationLink(
                        destination: TeamDetailView(team: team),
                        label: {
                            VStack {
                                Image(team.logoName)
                                    .resizable()
                                
                                
                                    .frame(height: 100)
                                    .cornerRadius(20)
                                
                                Text(team.teamName)
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .foregroundColor(colorScheme == .dark ? .darkThemeText : .lightThemeText) // Temaya göre renk değiştirildi
                            }
                        }
                    )
                }
                .navigationTitle("F1 Teams")
            }
        }
    }
}


struct TeamDetailView: View {
    var team: F1Teams
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            
            Image(team.logoName)
                .resizable()
            //                .aspectRatio(contentMode: .fit)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            
            
            
            
            
            
            Text(team.teamName)
                .foregroundColor(colorScheme == .dark ? .darkThemeText : .lightThemeText)
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
            
            ForEach(DriversList.allDrivers.filter { $0.driverTeamName == team.teamName }) { driver in
                NavigationLink(
                    destination: DriversView(driver: driver),
                    label: {
                        
                        Text(driver.driverName)
                        
                        
                        
                        
                        
                        
                        
                    }
                )
                .padding()
            }
        }
    }
}

struct TeamsListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsListView(isDarkMode: .constant(false))
    }}



struct DriversView: View {
    var driver: DriversModel
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        
        VStack(spacing: 20) {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.purple, .green, .blue]), startPoint: .topLeading, endPoint: .bottomLeading)
                VStack (alignment:.center){
                    KFImage(URL(string: driver.driverImage))
                        .resizable()
                        .frame(width: 130, height: 130)
                        .cornerRadius(20)
                        .padding(.horizontal)
                        .clipShape(Circle())
                        .overlay{
                            Circle().stroke(.mint,lineWidth: 5)
                        }
                    
                    VStack{
                        
                        ZStack{
                            Rectangle()
                                .frame(width: 275, height: 100)
                                .cornerRadius(5)
                                .foregroundColor(colorScheme == .dark ? .darkThemeBackground : .lightThemeBackground)
                            
                            VStack{
                                HStack{
                                    ZStack {
                                        Circle()
                                            .foregroundColor(.gray)
                                            .frame(height: 25)
                                        Text(driver.driverNumber)
                                            .foregroundColor(.yellow)
                                            .bold()
                                    }
                                    
                                    
                                    
                                    Text(driver.driverName)
                                        .foregroundColor(colorScheme == .dark ? .darkThemeText : .lightThemeText)
                                        .font(.system(size: 15, weight: .semibold))
                                        .multilineTextAlignment(.center)
                                    
                                        .padding(.horizontal, 15)
                                    
                                    
                                    
                                    
                                    KFImage(URL(string: driver.driverCountryFlagImage))
                                        .resizable()
                                        .cornerRadius(20)
                                        .frame(width: 25, height: 25)
                                    
                                    
                                    
                                }.padding(.horizontal, 5)
                                HStack(spacing: 60){
                                    Text("WorldChamp:\(driver.driverChampCount ?? "0")")
                                        .font(.system(size: 12, weight: .semibold, design: .default))
                                        .foregroundColor(colorScheme == .dark ? .darkThemeText : .lightThemeText)
                                    
                                        .font(.subheadline)
                                        
                                    
                                    
                                    
                                    
                                    
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 68, height: 20)
                                            .cornerRadius(5)
                                            .foregroundColor(.gray)
                                        
                                        Text("\(driver.driverPoint) PTS")
                                            .font(.system(size: 16, weight: .bold, design: .default))
                                    }
                                    
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        
                    }
                    
                }.padding(.trailing, 15)
                
                
                
                
            }.frame(width: 350,height: 300)
            
                .cornerRadius(20)
            
            // "Watch Now" link
            Link(destination: URL(string: driver.driverHighlights)!) {
                Text("Watch Now")
                    .bold()
                    .font(.title2)
                    .frame(width: 160, height: 50)
                    .background(Color(.yellow))
                    .foregroundColor(.purple)
                    .cornerRadius(20)
            }
            .padding(.horizontal, 100.0)
        }
    }
}




extension Color {
    static let lightThemeBackground = Color.white
    static let lightThemeText = Color.black
    static let darkThemeBackground = Color.black
    static let darkThemeText = Color.white
    static let cardChampCountText = Color.secondary
}
