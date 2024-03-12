//
//  LazyVGridView.swift
//  Starting
//
//  Created by Murat Işık on 25.11.2023.
//

import SwiftUI
import Kingfisher

struct LazyVGridView: View {
    
    let pagetitle: String = "12 Bestseller Books"
    let columns: [GridItem] = [
        GridItem(.fixed(80), spacing: 20),
        GridItem(.fixed(100), spacing: 20),
        GridItem(.fixed(80), spacing: 30, alignment: .center),
        
        ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(bookImage, id: \.self) { url in
                        
                        Group {
                            KFImage.url(URL(string: url)!)
                                .onSuccess { r in
                                    print(r)
                                }
                                .placeholder { p in
                                    ProgressView(p)
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: ImageSize.imageWidth.rawValue, height: ImageSize.imageHeight.rawValue)
                                .cornerRadius(ImageSize.imageBorder.rawValue)
                        }
                        
                    }
                }
                .padding()
                .navigationTitle(pagetitle)
                
            }
        }
    }
}

#Preview {
    LazyVGridView()
}

private var bookImage = [
    "https://www.thehandbook.com/cdn-cgi/image/width=886,height=1360,fit=cover,q=80,format=webp/https://files.thehandbook.com/uploads/2022/12/you-are-a-badass.jpg",
    "https://www.thehandbook.com/cdn-cgi/image/width=975,height=1200,fit=cover,q=80,format=webp/https://files.thehandbook.com/uploads/2022/12/the-5am-club.jpg",
    "https://www.thehandbook.com/cdn-cgi/image/width=365,height=500,fit=cover,q=80,format=webp/https://files.thehandbook.com/uploads/2022/12/manifest.jpg",
    "https://www.thehandbook.com/cdn-cgi/image/width=330,height=500,fit=cover,q=80,format=webp/https://files.thehandbook.com/uploads/2022/12/atomic-habits.jpg",
    "https://www.thehandbook.com/cdn-cgi/image/width=975,height=1200,fit=cover,q=80,format=webp/https://files.thehandbook.com/uploads/2022/12/big-magic.jpg",
    "https://www.thehandbook.com/cdn-cgi/image/width=975,height=1200,fit=cover,q=80,format=webp/https://files.thehandbook.com/uploads/2022/12/the-comfort-book.jpg",
    "https://www.thehandbook.com/cdn-cgi/image/width=975,height=1200,fit=cover,q=80,format=webp/https://files.thehandbook.com/uploads/2022/12/the-book-you-wish-your-parents-had-read.jpg",
    "https://www.thehandbook.com/cdn-cgi/image/width=647,height=1050,fit=cover,q=80,format=webp/https://files.thehandbook.com/uploads/2022/12/how-to-win-friends-and-influence-people.jpg",
    "https://www.thehandbook.com/cdn-cgi/image/width=400,height=617,fit=cover,q=80,format=webp/https://files.thehandbook.com/uploads/2022/12/deep-work.jpg",
    "https://www.thehandbook.com/cdn-cgi/image/width=326,height=500,fit=cover,q=80,format=webp/https://files.thehandbook.com/uploads/2022/12/out-of-office.jpg",
    "https://www.thehandbook.com/cdn-cgi/image/width=975,height=1200,fit=cover,q=80,format=webp/https://files.thehandbook.com/uploads/2022/12/if-in-doubt-wash-your-hair.jpg",
    "https://www.thehandbook.com/cdn-cgi/image/width=326,height=500,fit=cover,q=80,format=webp/https://files.thehandbook.com/uploads/2022/12/why-has-noboday-told-me-this-before.jpg"

    ]

enum ImageSize: Double {
    case imageWidth = 140.0
    case imageHeight = 150.0
    case imageBorder = 10.0
}
