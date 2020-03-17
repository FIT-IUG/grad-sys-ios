//
//  MyGroup.swift
//  Graduation
//
//  Created by Ali Jaradah on 3/17/20.
//  Copyright © 2020 Ali Jaradah. All rights reserved.
//

import SwiftUI

struct MyGroup: View {
    var body: some View {
        ZStack {

            VStack{
                Text("My Group ").bold().foregroundColor(Color.white).font(.largeTitle).padding(.bottom,5)

                ScrollView(.vertical) {
                
                VStack(spacing: 15){
                    ForEach(Groupfriends, id: \.id) { friend in
                        GroupdRow(friend: friend).padding()
                    }
                                }

                            }
                            .padding(.horizontal, 15)
                            .padding(.bottom, 40)
                

                    
                  }
                }    }
}

struct MyGroup_Previews: PreviewProvider {
    static var previews: some View {
        MyGroup()
    }
}
struct GroupF: Identifiable {
    var id:UUID = UUID()
    var name:String
    var idiug:String
}
var Groupfriends:[GroupF] = [
    GroupF(name: "Ali Hyder Jaradah", idiug: "120160852"),
    GroupF(name: "Baha'a Abu Shaqra", idiug: "120161121"),
    GroupF(name: "Karam Ism Qudaih", idiug: "120161111"),
    GroupF(name: "Osama Kamal AL Nbres", idiug: "120162828"),
]

struct GroupdRow: View {
    var friend:GroupF
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
                }
        Spacer()
        }
    }
}

struct GroupdRow_Previews: PreviewProvider {
    static var previews: some View {
        GroupdRow(friend: GroupF(name: "TestName", idiug: "123456"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
