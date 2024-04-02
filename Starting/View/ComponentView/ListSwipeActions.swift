//
//  LİstSwipeActions.swift
//  Starting
//
//  Created by Murat Işık on 28.03.2024.
//

import SwiftUI

struct ListSwipeActions: View {
    @StateObject var chatListViewModel: ChatListViewModel = ChatListViewModel()
    
    var body: some View {
        
        NavigationView  {
            VStack{
                List {
                    ForEach(chatListViewModel.friends) { friend in
                        HStack(spacing: 20){
                            Image(friend.profilePhoto)
                                .resizable()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                                .overlay{
                                    Circle().stroke(.yellow,lineWidth: 4)
                                }.padding(.horizontal, 10)
                                .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
                            
                            VStack(alignment: .leading){
                                Text(friend.name)
                                Text(friend.messageDetail)
                                    .font(.footnote)
                                    .fontWeight(.light)
                            }
                            
                        }
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            
                            Button(action: {},
                                   label: {
                                Text("Delete")
                                
                            })
                            .tint(.red)
                            Button(action: {},
                                   label: {
                                Text("Save")
                                
                            }).tint(.blue)
                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: true) {
                            Button(action: {},
                                   label: {
                                Text("Archive")
                                
                            }).tint(.green)
                        }
                    }
                }
            }
            .navigationTitle("Chats")
            
        }
    }
    
}

#Preview {
    ListSwipeActions()
}

struct ChatListModel: Identifiable {
    let id: UUID = UUID()
    let profilePhoto: String
    let name: String
    let messageDetail: String
}

class ChatListViewModel: ObservableObject {
    @Published var friends: [ChatListModel] = [
        ChatListModel(profilePhoto: "elon", name: "Elon Musk", messageDetail: "Your Tesla 3 is ready"),
        ChatListModel(profilePhoto: "larry", name: "Larry Page", messageDetail: "Google account is created"),
        ChatListModel(profilePhoto: "jackma", name: "Jack Ma", messageDetail: "The order has just given to cargo"),
        ChatListModel(profilePhoto: "timcook", name: "Tim Cook", messageDetail: "Update your phone to iOS 17"),
        ChatListModel(profilePhoto: "zuckerberg", name: "Mark Zuckerberg", messageDetail: "Share your history"),
    ]
}


