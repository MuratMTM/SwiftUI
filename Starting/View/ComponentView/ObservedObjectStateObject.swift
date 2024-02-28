//
//  ObservedObjectStateObject.swift
//  Starting
//
//  Created by Murat Işık on 28.02.2024.
//

import SwiftUI

struct ObservedObjectStateObject: View {
    @StateObject var whoWinsViewModel: WhoWinsViewModel = WhoWinsViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyHStack {
                    ForEach(whoWinsViewModel.deviceModels) { deviceModel in
                        VStack {
                            Text(deviceModel.modelName)
                            Image(deviceModel.modelImage)
                                .resizable()
                                .frame(width: 150, height: 200)
                            ZStack {
                                ProfileImageCircularView(image: deviceModel.modelImage, circleColor: .blue, imageWidth: 40, imageHeight: 40)
                                Text("\(deviceModel.score)")
                            }
                            Text(deviceModel.price)
                            
                            // Fix it! Cant be displayed all specifications!
                            GeometryReader { geometry in
                                VStack(alignment: .leading) {
                                    HStack{
                                        Text("Ekran Boyutu:").fontWeight(.bold)
                                        Text(deviceModel.screenSize)
                                    }
                                    HStack{
                                        Text("Kamera:").fontWeight(.bold)
                                        Text(deviceModel.camera)
                                    }
                                    HStack{
                                        Text("Ağırlık:").fontWeight(.bold)
                                        Text(deviceModel.weight)
                                    }
                                    HStack{
                                        Text("Dahili Depolama(ROM):").fontWeight(.bold)
                                        Text(deviceModel.rom)
                                    }
                                    HStack{
                                        Text("Bellek(RAM):").fontWeight(.bold)
                                        Text(deviceModel.ram)
                                    }
                                    HStack{
                                        Text("Yonga Seti(Chipset):").fontWeight(.bold)
                                        Text(deviceModel.chipSet)
                                    }
                                    HStack{
                                        Text("Batarya Kapasitesi:").fontWeight(.bold)
                                        Text(deviceModel.battery)
                                    }
                                    HStack{
                                        Text("Ekran Yenileme Hızı:").fontWeight(.bold)
                                        Text(deviceModel.refreshRate)
                                    }
                                    
                                    
                                }.frame(width: geometry.size.width)
                                
                            }
                        }
                        .padding()
                        .background(Color.secondary.opacity(0.1))
                        .cornerRadius(10)
                        .padding(.vertical)
                    }
                }
                .padding()
            }
            .navigationTitle("WhoWins")
            .onAppear {
                whoWinsViewModel.getDeviceInfo()
            }
        }
    }
}


#Preview {
    ObservedObjectStateObject()
}

struct WhoWinsModel: Identifiable {
    let id = UUID().uuidString
    let modelName: String
    let modelImage: String
    let score: String
    let price: String
    let screenSize: String
    let camera: String
    let weight: String
    let rom: String
    let ram: String
    let chipSet: String
    let battery: String
    let refreshRate: String
}

class WhoWinsViewModel: ObservableObject {
    @Published var deviceModels: [WhoWinsModel] = []
    @Published var isLoading: Bool = false
    
    func getDeviceInfo() {
        let onePlusEleven = WhoWinsModel(modelName: "OnePlus 11", modelImage: "oneplus-11", score: "90\nPuan", price: "40.099 TL", screenSize: "6.78 İnç", camera: "50 MP", weight: "205 Gram", rom: "256 GB", ram: "16 GB", chipSet: "Snapdragon 8 Gen 2", battery: "5000 mAh", refreshRate: "120 Hz")
        
        let xiaomiThirteen = WhoWinsModel(modelName: "Xiaomi 13", modelImage: "xiaomi-13", score: "87\nPuan", price: "46.099 TL", screenSize: "6.36 İnç", camera: "50 MP", weight: "189 Gram", rom: "256 GB", ram: "12 GB", chipSet: "Snapdragon 8 Gen 2", battery: "4500 mAh", refreshRate: "120 Hz")
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.deviceModels.append(onePlusEleven)
            self.deviceModels.append(xiaomiThirteen)
            self.isLoading = false
        }
        
        
    }
}
