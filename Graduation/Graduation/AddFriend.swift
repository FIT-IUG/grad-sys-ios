//
//  AddFriend.swift
//  Graduation
//
//  Created by Ali Jaradah on 3/14/20.
//  Copyright © 2020 Ali Jaradah. All rights reserved.
//

import SwiftUI


struct AddFriend: View {
//    @State var selected = 1

    var body: some View {
        
        ZStack {

            VStack{
                Text("Group Request").bold().foregroundColor(Color.white).font(.largeTitle).padding(.bottom,5)

                ScrollView(.vertical) {
                
                VStack(spacing: 15){
                    ForEach(friends, id: \.id) { friend in
                        FriendRow(friend: friend).padding()
                    }
                                }

                            }
                            .padding(.horizontal, 15)
                            .padding(.bottom, 40)
                

                    
                  }
                }
   
    
    }
}

struct AddFriend_Previews: PreviewProvider {
    static var previews: some View {
        AddFriend()
    }
}



struct Friend: Identifiable {
    var id:UUID = UUID()
    var name:String
    var idiug:String
}

var friends:[Friend] = [
    Friend(name: "Ali Hyder Jaradah", idiug: "120160852"),
    Friend(name: "Baha'a Abu Shaqra", idiug: "120161121"),
    Friend(name: "Karam Ism Qudaih", idiug: "120161111"),
    Friend(name: "Osama Kamal AL Nbres", idiug: "120162828"),
    Friend(name: "Ali Hyder Jaradah", idiug: "120160852"),
    Friend(name: "Baha'a Abu Shaqra", idiug: "120161121"),
    Friend(name: "Karam Ism Qudaih", idiug: "120161111"),
    Friend(name: "Osama Kamal AL Nbres", idiug: "120162828")
]


struct FriendRow: View {
    var friend:Friend
    var body: some View {
            HStack {
//                Image(systemName: "person.fill")
                Image("2")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .clipShape(Circle())
                    .frame(width: 80, height: 80)
                VStack (alignment: .leading, spacing: 10) {
                    VStack (alignment: .leading, spacing: 2) {
                        Text(friend.name)
                            .foregroundColor(.white).bold()
                        Text(friend.idiug)
                            .foregroundColor(.white)
                    }
                    HStack {
                        Button(action: {
                            print("Add friend")
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(height: 35)
                                    .foregroundColor(.blue)
                                Text("Add Friend")
                                    .font(.system(size: 13))
                                    .foregroundColor(.white)
                            }
                        }
                        Button(action: {
                            print("Remove")
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(height: 35)
                                    .foregroundColor(.gray)
                                Text("Remove")
                                    .font(.system(size: 13))
                                    .foregroundColor(.white)
                            }
                        }
                        Spacer()
                    }
                }
            }
    }
}

struct FriendRow_Previews: PreviewProvider {
    static var previews: some View {
        FriendRow(friend: Friend(name: "TestName", idiug: "123456"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
