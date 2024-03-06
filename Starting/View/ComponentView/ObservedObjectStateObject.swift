//
//  ObservedObjectStateObject.swift
//  Starting
//
//  Created by Murat Işık on 28.02.2024.
//

import SwiftUI

struct ObservedObjectStateObject: View {
    @StateObject var whoWinsViewModel: WhoWinsViewModel = WhoWinsViewModel()
    @State var selectedURL: String?
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack{
                    HStack {
                        Section {
                            ForEach(whoWinsViewModel.deviceModels) { deviceModel in
                                VStack(spacing: 15) {
                                    Text(deviceModel.modelName)
                                    Image(deviceModel.modelImage)
                                        .resizable()
                                    
                                        .frame(width: 130, height: 200)
                                    ZStack {
                                        ProfileImageCircularView(image: deviceModel.modelImage, circleColor: .blue, imageWidth: 50, imageHeight: 50)
                                        Text("\(deviceModel.score)")
                                            .multilineTextAlignment(.center)
                                            .font(.footnote)
                                    }
                                    Text(deviceModel.price)
                                    
                                    
                                    
                                    VStack(alignment: .leading) {
                                        HStack{
                                            Text("Screen Size:")
                                                .fontWeight(.bold)
                                            
                                            Text(deviceModel.screenSize)
                                            
                                        }
                                        
                                        HStack{
                                            Text("Resolution:").fontWeight(.bold)
                                            Text(deviceModel.resolution)
                                        }
                                        HStack{
                                            Text("PPI:").fontWeight(.bold)
                                            Text(deviceModel.ppi)
                                        }
                                        
                                        HStack{
                                            Text("Glass Type:").fontWeight(.bold)
                                            Text(deviceModel.glassType)
                                        }
                                        
                                        HStack{
                                            Text("Camera:").fontWeight(.bold)
                                            Text(deviceModel.camera)
                                        }
                                        HStack{
                                            Text("Front Camera:").fontWeight(.bold)
                                            Text(deviceModel.frontCamera)
                                        }
                                        HStack{
                                            Text("Weight:").fontWeight(.bold)
                                            Text(deviceModel.weight)
                                        }
                                        HStack{
                                            Text("Thickness:").fontWeight(.bold)
                                            Text(deviceModel.thickness)
                                        }
                                        HStack{
                                            Text("FingerPrint:").fontWeight(.bold)
                                            Text(deviceModel.fingerPrint)
                                        }
                                        HStack{
                                            Text("FaceID:").fontWeight(.bold)
                                            Text(deviceModel.faceId)
                                        }
                                        
                                        HStack{
                                            Text("ROM:").fontWeight(.bold)
                                            Text(deviceModel.rom)
                                        }
                                        HStack{
                                            Text("RAM:").fontWeight(.bold)
                                            Text(deviceModel.ram)
                                        }
                                        HStack{
                                            Text("Chipset:").fontWeight(.bold)
                                            Text(deviceModel.chipSet)
                                        }
                                        HStack{
                                            Text("NFC:").fontWeight(.bold)
                                            Text(deviceModel.nfc)
                                        }
                                        HStack{
                                            Text("IP Rating:").fontWeight(.bold)
                                            Text(deviceModel.ipRating)
                                        }
                                        HStack{
                                            Text("Water resistance:").fontWeight(.bold)
                                            Text(deviceModel.waterResistance)
                                        }
                                        HStack{
                                            Text("Battery:").fontWeight(.bold)
                                            Text(deviceModel.battery)
                                        }
                                        HStack{
                                            Text("Refresh Rate:").fontWeight(.bold)
                                            Text(deviceModel.refreshRate)
                                        }
                                        HStack{
                                            Text("UI:").fontWeight(.bold)
                                            Text(deviceModel.ui)
                                        }
                                        HStack{
                                            Text("OS:").fontWeight(.bold)
                                            Text(deviceModel.os)
                                        }
                                        HStack{
                                            Text("Origin:").fontWeight(.bold)
                                            Text(deviceModel.origin)
                                        }
                                        
                                        
                                        
                                        
                                    }.font(.caption)
                                }
                                
                                .background(Color.secondary.opacity(0.1))
                                .cornerRadius(10)
                                .padding(.vertical)
                            }
                        }.listStyle(GroupedListStyle())
                    }
                    
                    HStack(spacing: 100) {
                        Button(action: {
                            guard let url = URL(string: deviceUrls.first ?? "404 not found" ) else {
                                return
                            }
                            UIApplication.shared.open(url)
                        }) {
                            Text("Buy")
                                .padding(.horizontal, 30)
                                .padding(.vertical, 15)
                                .background(Color.red)
                                
                                .cornerRadius(20)
                        }
                        .buttonStyle(BorderedButtonStyle())
                        
                        Button(action: {
                            guard let url = URL(string: deviceUrls[1] ) else {
                                return
                            }
                            UIApplication.shared.open(url)
                        }) {
                            Text("Buy")
                                .padding(.horizontal, 30)
                                .padding(.vertical, 15)
                                .background(Color.green)
                               
                                .cornerRadius(20)
                        }
                        .buttonStyle(BorderedButtonStyle()) // buton stiline PlainButtonStyle uyguluyoruz
                    }

                    
                }
                .padding(.vertical, 5)
                
                
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
    let resolution: String
    let ppi: String
    let glassType: String
    let camera: String
    let frontCamera: String
    let weight: String
    let thickness: String
    let fingerPrint: String
    let faceId: String
    let rom: String
    let ram: String
    let chipSet: String
    let nfc: String
    let ipRating: String
    let waterResistance: String
    let battery: String
    let refreshRate: String
    let ui: String
    let os: String
    let origin: String
    
    
}

class WhoWinsViewModel: ObservableObject {
    @Published var deviceModels: [WhoWinsModel] = []
    @Published var isLoading: Bool = false
    
    func getDeviceInfo() {
        let onePlusEleven = WhoWinsModel(modelName: "OnePlus 11", modelImage: "oneplus-11", score: "90\nPuan", price: "40.099 TL", screenSize: "6.78 İnç",resolution: "1440x3216",ppi:"525", glassType: "Gorilla Glass Victus",camera: "50 MP",frontCamera: "16 MP", weight: "205 Gram",thickness: "8.53 mm",fingerPrint: "Yes",faceId: "Yes", rom: "256 GB", ram: "16 GB", chipSet: "Snapdragon 8 Gen 2",nfc: "Yes",ipRating:"IP54",waterResistance: "Yes", battery: "5000 mAh", refreshRate: "120 Hz",ui: "OxygenOS 13", os: "Android 13", origin: "India")
        
        let xiaomiThirteen = WhoWinsModel(modelName: "Xiaomi 13", modelImage: "xiaomi-13", score: "87\nPuan", price: "46.099 TL", screenSize: "6.36 İnç",resolution: "1080x2400",ppi:"414", glassType: "Gorilla Glass 5",camera: "50 MP",frontCamera: "32 MP", weight: "189 Gram",thickness: "7.98 mm",fingerPrint: "Yes",faceId: "Yes", rom: "256 GB", ram: "16 GB", chipSet: "Snapdragon 8 Gen 2",nfc: "Yes",ipRating:"IP68",waterResistance: "Yes", battery: "4500 mAh", refreshRate: "120 Hz",ui: "OxygenOS 13", os: "Android 13", origin: "China")
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.deviceModels.append(onePlusEleven)
            self.deviceModels.append(xiaomiThirteen)
            self.isLoading = false
        }
        
        
    }
    
    
}


let deviceUrls: [String] = [
    "https://www.hepsiburada.com/oneplus-11-5g-256-gb-16-gb-ram-oneplus-turkiye-garantili-pm-HBC000054I6H6",
    "https://www.hepsiburada.com/xiaomi-13-256-gb-12-gb-ram-xiaomi-turkiye-garantili-p-HBCV00003XUR0X?ds_rl=1294343&wt_gl=cpc.6804-CT.dsa.camp19821051314adgr146581318709&gad_source=1&ds_rl=1294343&gclid=CjwKCAiAopuvBhBCEiwAm8jaMeupf0klRvyKpKOhzv8jB0idtIkx2bw_YFXSOkRy7m0xDM6nOyhy-RoCutgQAvD_BwE&gclsrc=aw.ds"]

