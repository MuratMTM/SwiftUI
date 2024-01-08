//
//  ActionSheetView.swift
//  Starting
//
//  Created by Murat Işık on 8.01.2024.
//

import SwiftUI
import Kingfisher

struct ActionSheetView: View {
    
    @State var showActionSheet: Bool = false
    let carModelName: String = "Porsche Taycan"
    let taycanImageURL: String = "https://getrentacar.com/storage/cache/images/960-640-100-fit-91924.jpeg"
    let packages: String = "Packages"
    let actionSheetMessage: String = "choose the package"
    
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 80){
                Text(carModelName)
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                    .fontDesign(.serif)
                
                KFImage(URL(string:taycanImageURL))
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                    .clipShape(.capsule)
                
                Button(packages) {
                    showActionSheet.toggle()
                }
                    .padding()
                    .foregroundStyle(.white)
                    .fontWidth(.expanded)
                    .fontWeight(.medium)
                    .background(.secondary)
                    .cornerRadius(20)
                    
                .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
            }
        }
    }
    
    func getActionSheet() -> ActionSheet {
        let buttons: [ActionSheet.Button] = [
                   .default(Text("Turbo")),
                   .default(Text("Turbo S")),
                   .default(Text("4S")),
                   .default(Text("4S Performance")),
                   .default(Text("GTS")),
                   .cancel()
                   
               ]
        
        
        return ActionSheet(title: Text(carModelName).bold(),
                           message: Text(actionSheetMessage),
                           buttons: buttons)
    }
}

#Preview {
    ActionSheetView()
}
