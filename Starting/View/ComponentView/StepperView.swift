//
//  StepperView.swift
//  Starting
//
//  Created by Murat Işık on 4.09.2023.
//

import SwiftUI

struct StepperView: View {
    @State private var radius: Double = 1.5
    @State private var volume: Double = 4/3 * Double.pi * pow(1.0, 3)
    var body: some View {
        VStack{
            
                
                Circle()
                    .frame(width: CGFloat(radius * 100), height: CGFloat(radius * 100))
                    .foregroundColor(.blue)
                    .padding()
                Stepper(value: $radius, in: 0.1...10.0, step: 0.1) {
                    Text("Daire Yarıçapı: \(radius, specifier: "%.2f")")
                }
                .padding()
                Text("Daire Hacmi: \(volume, specifier: "%.2f")")
                    .padding()
            
            
            .onChange(of: radius) { newValue in
                volume = 4/3 * Double.pi * pow(newValue, 3)
                
            }
        }
        
    }
    
    struct StepperView_Previews: PreviewProvider {
        static var previews: some View {
            StepperView()
        }
        
    }
    
    
//    func calculateVolume(radius: Int)  {
//        _ = "\(radius*radius*radius*4/3)π"
//        
//    }
}
