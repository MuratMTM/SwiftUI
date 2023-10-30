//
//  CardLayout.swift
//  Starting
//
//  Created by Murat Işık on 26.07.2023.
//

import SwiftUI
import Kingfisher

struct CardLayout: View {
    
    
    var body: some View {
        
        
        
        
        
       
      
            VStack {
                ForEach(WorkerCardModel.workers, id: \.workerName){ worker in
                        VStack(alignment: .center, spacing: 10) {
                            KFImage(URL(string: worker.url))
                                .resizable()
                                .frame(width:150, height: 150)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .overlay{
                                    Circle().stroke(.indigo,lineWidth: 10)
                                    
                                    
                                }
                                .shadow(radius: /*@START_MENU_TOKEN@*/22/*@END_MENU_TOKEN@*/)
                            
                            Text(worker.workerName)
                                .fontWeight(.bold)
                                .padding(.top, 9.0)
                            
                            
                            
                                .frame(maxWidth: 170, alignment: .center)
                                .layoutPriority(1)
                            
                            Text(worker.jobName)
                            
                                .opacity(0.7)
                                .frame(maxWidth: .infinity, alignment: .center)
                            
                            
                            
                            
                            
                            
                            Text(worker.firmName)
                            
                                .opacity(0.7)
                            
                            
                            Spacer()
                            
                            
                        }
                        
                        .foregroundColor(.white)
                        .padding(30)
                        .frame(width: 260, height: 310)
                        .background(.linearGradient(colors: [.black.opacity(1), .blue.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .shadow(color: .blue.opacity(0.3), radius: 8, x: 0, y: 12)
                        .shadow(color: .blue.opacity(0.3), radius: 2, x: 0, y: 1)
                    }
            }
        }
        }
        
        
        
        
        
        
        
    

    
    struct CardLayout_Previews: PreviewProvider {
        static var previews: some View {
            CardLayout()
        }
    
}
