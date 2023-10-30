//
//  ImagePackageAdd.swift
//  Starting
//
//  Created by Murat Işık on 13.07.2023.
//

import SwiftUI
import Kingfisher

struct ImagePackageAdd: View {
    
    private let imageUrl: String = "https://hips.hearstapps.com/hmg-prod/images/race-winner-max-verstappen-of-netherlands-and-red-bull-news-photo-1624201754.jpg"
    
    var body: some View {
       KFImage(URL(string: imageUrl))
            .resizable()
            .frame(width: 300, height: 300, alignment: .center)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay{
                Circle().stroke(.orange,lineWidth: 10)
            }
            .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
          
          
            
            
    }
}

struct ImagePackageAdd_Previews: PreviewProvider {
    static var previews: some View {
        ImagePackageAdd()
    }
}
