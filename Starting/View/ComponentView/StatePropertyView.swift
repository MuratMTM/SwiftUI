//
//  StatePropertyView.swift
//  Starting
//
//  Created by Murat Işık on 30.11.2023.
//

import SwiftUI

struct StatePropertyView: View {
    let columns: [GridItem] = [
        GridItem(.fixed(100),spacing: .zero),
        GridItem(.fixed(100),spacing: .zero),
        GridItem(.fixed(100),spacing: .zero),
        
        
        
    ]
    @State var firstColorOfFlag: Color = Color.green
    @State var secondColorOfFlag: Color = Color.red
    @State var thirdColorOfFlag: Color = Color.blue
    let SizeOfColumn: Double = 400.0
    let spacing: Double = 30.0
    let title: String = "Country Flags"
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.mint)
                .ignoresSafeArea()
            
            VStack(spacing: spacing) {
                Text(title)
                    .bold()
                
                LazyHGrid(
                    rows:columns,
                    content: {
                        
                        Rectangle()
                            .frame(width: SizeOfColumn)
                            .foregroundColor(firstColorOfFlag)
                        Rectangle()
                            .frame(width: SizeOfColumn)
                            .foregroundColor(secondColorOfFlag)
                        Rectangle()
                            .frame(width: SizeOfColumn)
                            .foregroundColor(thirdColorOfFlag)
                    })
                
                HStack(spacing: spacing){
                    Button(action: {
                        firstColorOfFlag = .black
                        secondColorOfFlag = .red
                        thirdColorOfFlag = .yellow
                    },
                           label: {
                        Text(CountryName.germany.rawValue)
                    }).buttonStyle(.borderedProminent)
                    
                    
                    
                        .italic()
                    
                    Button(action: {
                        firstColorOfFlag = .white
                        secondColorOfFlag = .green
                        thirdColorOfFlag = .red
                        
                    },
                           label: {
                        Text(CountryName.bulgaria.rawValue)
                    }).buttonStyle(.borderedProminent)
                    
                    Button(action: {
                        firstColorOfFlag = .yellow
                        secondColorOfFlag = .blue
                        thirdColorOfFlag = .red
                    },
                           label: {
                        Text(CountryName.columbia.rawValue)
                    }).buttonStyle(.borderedProminent)
                    
                }
            }
        }
        
    }
}

#Preview {
    StatePropertyView()
}

enum CountryName: String {
    case germany = "Germany"
    case bulgaria = "Bulgaria"
    case columbia = "Columbia"
    
}


