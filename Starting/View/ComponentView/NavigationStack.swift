//
//  NavigationStack.swift
//  Starting
//
//  Created by Murat Işık on 17.04.2024.
//

import SwiftUI

struct NavigationStackView: View {
  private var phoneViewModel = PhoneViewModel()
  @State private var isDetailViewPresented = false
  @State private var selectedPhone: PhoneModel? // Optional type for selectedPhone

  var body: some View {
    NavigationStack {
      List {
        ForEach(phoneViewModel.phones) { phone in
            NavigationLink(value: phone) { // Pass phone model directly
              HStack {
                Image(phone.brandImage)
                  .resizable()
                  .frame(width: 100, height: 100)
                Text(phone.brand)
              }
            }
            
            HStack {
              Image(phone.brandImage)
                .resizable()
                .frame(width: 100, height: 100)
              Text(phone.brand)
            }
          }
        }
      }
      .navigationTitle("Phones")
    }
    
  
  }


#Preview {
  NavigationStackView()
}

struct PhoneModel: Identifiable, Hashable {
  let id = UUID()
  let brand: String
  let brandImage: String
}

struct PhoneViewModel {
  var phones: [PhoneModel] = [
    PhoneModel(brand: "Iphone", brandImage: "iphone"),
    PhoneModel(brand: "Samsung", brandImage: "samsung"),
    PhoneModel(brand: "OnePlus", brandImage: "oneplus"),
    PhoneModel(brand: "Oppo", brandImage: "oppo"),
    PhoneModel(brand: "Xiaomi", brandImage: "xiaomi"),
  ]
}

struct PhoneDetailView: View {
  let phone: PhoneModel

  var body: some View {
    Text(phone.brand)
  }
}
