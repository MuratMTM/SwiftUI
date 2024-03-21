//
//  AsyncImageView.swift
//  Starting
//
//  Created by Murat Işık on 22.03.2024.
//

import SwiftUI

struct AsyncImageView: View {
    
    let swift: String = "SwiftUI"
    let flutter: String = "Flutter"
    let swiftLogoUrl = URL(string: "https://i0.wp.com/shinesolutions.com/wp-content/uploads/2021/08/1024.jpeg?fit=1024%2C576&ssl=1")
    let flutterLogoURl = URL(string: "https://moguru.de/wp-content/uploads/Flutter_Crossplattform_Post_Header.png")
    
    var body: some View {
        VStack(spacing: 60){
            AsyncImage(url: swiftLogoUrl) { swiftImage in
                swiftImage
                    .resizable()
                
                    .frame(width:300, height: 150)
                    .shadow(color: .black, radius: 20)
                    .cornerRadius(20)
            } placeholder: {
                ProgressView()
            }
            
            Text(swift)
            
            AsyncImage(url: flutterLogoURl) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let flutterLogo):
                    flutterLogo
                        .resizable()
                        .cornerRadius(20)
                        .frame(width:300, height: 150)
                        .shadow(color: .black, radius: 20)
                    
                case .failure(_):
                    Image(systemName: "xmark.seal")
                        .resizable()
                        .scaledToFit()
                        .frame(width:100, height: 100)
                    
                default:
                    Image(systemName: "circle.hexagonpath.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width:100, height: 100)
                    
                }
            }
            Text(flutter)
            
        }
    }
}

#Preview {
    AsyncImageView()
}
