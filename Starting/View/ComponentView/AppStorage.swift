//
//  AppStorage.swift
//  Starting
//  Created by Murat Işık on 11.03.2024.

import SwiftUI

struct AppStorageView: View {
    @ObservedObject var counterStrikeViewModel: CounterStrikeViewModel = CounterStrikeViewModel()
    let columns: [GridItem] =    [
        GridItem(.fixed(160), spacing: 20),
        GridItem(.fixed(160), spacing: 20),
       
    ]
    
    @AppStorage("choose a map") var selectedMap: String = "cs_assault"
    
    var body: some View {
        NavigationView{
            VStack {
                TextField(selectedMap, text: $selectedMap)
                    .padding()
                    .background(Color.gray.cornerRadius(10))
                ScrollView{
                    LazyVGrid(columns: columns) {
                        ForEach(counterStrikeViewModel.counterStrikeMaps) { map in
                            
                                VStack{
                                    if let url = URL(string: map.mapImageURl),
                                                                  let imageData = try? Data(contentsOf: url),
                                                                  let image = UIImage(data: imageData) {
                                                                   Image(uiImage: image)
                                                                       .resizable()
                                                                       
                                                                       .scaledToFit()
                                                                       .frame(width: 160, height: 160)
                                                                       .cornerRadius(10)
                                                                       .onTapGesture {
                                                                           selectedMap = map.mapName
                                                                       }
                                                               } else {
                                                                   Text("Image not found")
                                                               }
                                                               Text(map.mapName)
                                        .frame(maxWidth: .infinity)
                                }
                           
                                                   }
                                               }.navigationTitle("Counter Strike 1.6")
                        .onAppear{
                            Task{
                                await counterStrikeViewModel.fetchCounterStrikeMaps()
                            }
                        }
                }
            }.padding(.horizontal,20)
        }
    }
}


#Preview {
    AppStorageView()
}



struct CounterStrikeModel: Identifiable{
    let id: UUID = UUID()
    let mapName: String
    let mapImageURl: String
}

class CounterStrikeViewModel: ObservableObject {
    @Published var counterStrikeMaps: [CounterStrikeModel] = []
    @Published var isLoading: Bool = false
    
   
    
    func fetchCounterStrikeMaps() async {
        isLoading = true
        
        let maps = [
            CounterStrikeModel(mapName: "cs_assault", mapImageURl: "https://i.ytimg.com/vi/s9kb7_k8Wlc/mqdefault.jpg"),
            CounterStrikeModel(mapName: "de_dust2", mapImageURl: "https://playerbros.com/wp-content/uploads/2019/06/dust2-e1560930308570.jpg"),
            CounterStrikeModel(mapName: "de_inferno", mapImageURl: "https://steamuserimages-a.akamaihd.net/ugc/1792972032736971761/8508A6BBF7D6DC818F7995B14759AED3F9714CC0/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true"),
            CounterStrikeModel(mapName: "fy_poolday", mapImageURl: "https://pbs.twimg.com/media/FOnVVZdXIAIWeSg.jpg"),
            CounterStrikeModel(mapName: "fy_iceworld", mapImageURl: "https://steamuserimages-a.akamaihd.net/ugc/598162105580989943/E23CC018B742AA1E61EDAC2FBDA973445C1ECA58/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true"),
            CounterStrikeModel(mapName: "de_italy", mapImageURl: "https://images.gamebanana.com/img/ss/mods/58a7daa112bb1.webp")
        ]
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1 ) {
            self.counterStrikeMaps = maps
            self.isLoading = false
        }
    }
    
}






