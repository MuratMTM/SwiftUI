//
//  SliderView.swift
//  Starting
//
//  Created by Murat Işık on 4.09.2023.
//

import SwiftUI
import Kingfisher



struct SliderView: View {
    
    @State private var agno: Double = 2.7
    @State private var isEditing = false
    
    var body: some View {
        VStack{
            HStack{
                Text("Ceyda Bay\nMekatronik Mühendisliği")
                    .foregroundColor(.pink)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    
                KFImage(URL(string: "https://instagram.fist13-1.fna.fbcdn.net/v/t51.2885-19/371989089_1029247321404035_3426742590501937681_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fist13-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=ZEnn7m3q87kAX8KwEUw&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDJnSPPV86PndtbLFZIm9r9cRMUtFKJ02wrMa_YPq0gKg&oe=64FB5801&_nc_sid=8b3546"))
                    .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay{
                        Circle().stroke(.purple,lineWidth: 5)
                    }
                    .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
                
            }
            Text("AGNO:")
                .padding(.vertical, 1)
                .foregroundColor(.teal)
                .bold()
                
                Text(String(format: "%.2f", agno))
                    .foregroundColor(.purple)
                    .bold()
                
                Slider(
                    value: $agno,
                    in: 0...4,
                    
                    onEditingChanged: { editing in
                        isEditing = editing
                    }
                )
                Text("\(agno)")
                    .foregroundColor(isEditing ? .red : .blue)
                
            }
        }
    
    struct SliderView_Previews: PreviewProvider {
        static var previews: some View {
            SliderView()
        }
    }
}
