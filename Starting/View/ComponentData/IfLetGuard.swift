//  IfLetGuard.swift
//  Starting
//  Created by Murat Işık on 19.02.2024.


import SwiftUI
import Kingfisher

struct IfLetGuard: View {
    @State var cleanCode: String? = nil
    @State var cleanCodeImage: String? = nil
    @State var isLoading: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                if isLoading {
                    ProgressView()
                } else {
                    if let theCleanCode = cleanCode {
                        Text("1-\(theCleanCode)")
                    }
                    if let theCleanCodeImage = cleanCodeImage {
                        KFImage(URL(string: theCleanCodeImage))
                            .resizable()
                            .frame(width: 300, height: 300)
                            .cornerRadius(15)
                            .padding(10)
                    } else {
                        Text("The image of the book could not be loaded.")
                    }
                }
            }
        }.navigationTitle("Best Books for Programmers")
        .onAppear(){
            loadData()
        }
    }
    
    func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            cleanCode = "Clean Code"
            cleanCodeImage = "https://m.media-amazon.com/images/I/51E2055ZGUL._AC_UF1000,1000_QL80_.jpg"
            isLoading = false
        }
    }
}

struct IfLetGuard_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuard()
    }
}
