//
//  ContentView.swift
//  Starting
//
//  Created by Murat Işık on 4.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftView()
    }
}

struct SwiftView: View {
    
    
    var body: some View{
        VStack(alignment: .center) {
            Text("Welcome to SoftHack")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.green)
            .padding(2.0)
            
            Text("This is our mobile application company.")
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.pink)
            
            Spacer()
            HStack {
                Text("CEO")
                    .font(.headline)
                    .foregroundColor(Color.brown)
                    .fontWeight(.bold)
                Text("Murat Işık")
            }
           
        }
            
    }
}






