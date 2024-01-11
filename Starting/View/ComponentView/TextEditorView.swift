//
//  TextEditorView.swift
//  Starting
//
//  Created by Murat Işık on 11.01.2024.
//

import SwiftUI

struct TextEditorView: View {
    @State var coverLetter: String = ""
    @State var yourCoverLetter: String = ""
    var body: some View {
        
        VStack(spacing: 30){
            VStack {
                Text("Cover Letter")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                    
                TextEditor(text: $coverLetter)
                    .frame(width: 300,height: 250)
                    .padding()
                    .cornerRadius(20)
                    .background(Color.gray)
                    .foregroundStyle(.indigo)
                    
                
                
                
            }.background(Color.green)
                .cornerRadius(20)
            
            Button(action: {
                yourCoverLetter = coverLetter
            }, label: {
                Text("Send".uppercased())
                    .padding()
                    .foregroundStyle(.white)
                    
            }).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.pink)
                .padding(.horizontal,130)
                
        }
        
        Text("About:\(yourCoverLetter)")
            .padding()
            
            
    }
    
   
    
}
#Preview {
    TextEditorView()
}
