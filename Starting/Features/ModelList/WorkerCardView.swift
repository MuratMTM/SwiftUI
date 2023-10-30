//
//  ModelListView.swift
//  Starting
//
//  Created by Murat Işık on 25.07.2023.
//

import SwiftUI

struct WorkerCardView: View {
    var body: some View {
        
        VStack {
            Text("Yıldız Teknik Üniversitesi")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
            
            
            List(WorkerCardModel.workers){data in CardLayout()}
                .accessibilityElement()
                
            
             
                
                
                
        }
    }
}

struct ModelListView_Previews: PreviewProvider {
    static var previews: some View {
        WorkerCardView()
    }
}
