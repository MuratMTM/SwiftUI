//
//  SheetView.swift
//  Starting
//
//  Created by Murat Işık on 3.01.2024.
//

import SwiftUI
import Kingfisher





struct SheetView: View {
    @State var isDetailed: Bool = false
    
    var body: some View {
        
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .center,spacing: 30) {
                
                
                KFImage(URL(string: OnePlusimageURL().imageURl[0]))
                    .resizable()
                    .frame(width: 150, height: 50)
                    .cornerRadius(20)
                
                
                
                HStack(spacing: 70){
                    Text("Series")
                        .foregroundStyle(.white)
                        .font(.headline)
                    
                    Text("Community")
                        .foregroundStyle(.white)
                        .font(.headline)
                    
                    Text("About")
                        .foregroundStyle(.white)
                        .font(.headline)
                }
                
                
                
                KFImage(URL(string:OnePlusimageURL().imageURl[1] ))
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                
                
                
                Text("The Shape of Power")
                    .foregroundStyle(.white)
                    .bold()
                    .font(.title)
                
                HStack {
                    Text("OnePlus 11")
                        .foregroundStyle(.white)
                    
                        .font(.system(size: 60, weight: .bold, design: .rounded))
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 50, height: 30)
                            .foregroundColor(.gray)
                            .cornerRadius(10)
                        
                        Text("5G")
                            .foregroundStyle(.white)
                            .font(.system(size: 25, weight: .bold, design: .serif))
                        
                    }.offset(y: -8)
                    
                    
                    
                }
                
                
                KFImage(URL(string: OnePlusimageURL().imageURl[2]))
                    .resizable()
                    .frame(width: 150, height: 150)
                
                
                
                
                
                Button("Details") {
                    
                    isDetailed.toggle()
                }
                .frame(width: 200,height: 40)
                .foregroundStyle(.blue)
                .bold()
                .font(.title)
                .background(.secondary)
                .clipShape(.rect(cornerRadius: 10))
                .sheet(isPresented: $isDetailed, content: {
                    SheetDetailView()
                    
                    
                    
                }
                       
                       
                ) .transition(.move(edge: .bottom))
                    .animation(.spring(), value: 10)
                
                
                
                
                
                
                
                
                
            }
            
            
            
        }
        
        
        
    }
}

#Preview {
    SheetView()
    
}

struct SheetDetailView: View{
    
    @Environment(\.presentationMode) var presentationMode
    var deviceFeatures: [DeviceFeature] = [
        DeviceFeature(title: "Ekran Boyutu", value: "6.7 İnç"),
        DeviceFeature(title: "Ekran Teknolojisi", value: "AMOLED"),
        DeviceFeature(title: "Ekran Çözünürlüğü", value: "1440x3216 (QHD+) Piksel"),
        DeviceFeature(title: "Piksel Yoğunluğu", value: "525 PPI"),
        DeviceFeature(title: "Ekran Yenileme Hızı", value: "120 Hz"),
        DeviceFeature(title: "Batarya Kapasitesi", value: "5000 mAh"),
        DeviceFeature(title: "Hızlı Şarj Gücü", value: "100W"),
        DeviceFeature(title: "Kablosuz Şarj", value: "Yok"),
        DeviceFeature(title: "Ekran Dayanıklılığı", value: "Corning Gorilla Glass Victus"),
        DeviceFeature(title: "Kamera Çözünürlüğü", value: "50 MP"),
        DeviceFeature(title: "Yonga Seti", value: "Snapdragon 8 Gen 2"),
        DeviceFeature(title: "Ön Kamera Çözünürlüğü", value: "16 MP"),
        DeviceFeature(title: "İşletim Sistemi", value: "Android"),
        DeviceFeature(title: "Kullanıcı Arayüzü", value: "OxygenOS"),
        DeviceFeature(title: "Çıkış Yılı", value: "2023")
        
        
    ]
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            NavigationView {
                List {
                    Section(header:
                                Text("Cihaz Özellikleri")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                    ) {
                        ForEach(deviceFeatures) { feature in
                            FeatureRow(title: feature.title, value: feature.value)
                                .foregroundColor(.white)
                        }
                    }
                }
                .listStyle(GroupedListStyle())
                .environment(\.colorScheme, .dark)
                
            }
            Button(
                action: {
                    presentationMode.wrappedValue.dismiss()
                },
                label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.white)
                        .font(.title)
                        .padding()
                    
                })
        }
    }
}

struct FeatureRow: View {
    var title: String
    var value: String
    
    var body: some View {
        
        
        HStack {
            Text(title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
            Text(value)
                .foregroundStyle(.white)
        }
        .padding(8)
        
    }
}

struct DeviceFeature: Identifiable {
    var id = UUID()
    var title: String
    var value: String
}


struct OnePlusimageURL {
    let imageURl = [
        "https://www.androidheadlines.com/wp-content/uploads/2020/03/OnePlus-new-logo-2020.webp",
        "https://img.teknolojioku.com/rcman/Cw820h461q95gc/storage/files/images/2023/07/19/oneplus-12nin-ozellikleri-iyiden-i-syH7_cover.jpg",
        "https://ares.shiftdelete.net/2022/11/Snapdragon-8-Gen-2-liderlige-oynuyor.jpg",
        
        
        
        
    ]
}
