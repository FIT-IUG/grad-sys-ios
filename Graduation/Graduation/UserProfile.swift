//
//  UserProfile.swift
//  Graduation
//
//  Created by Ali Jaradah on 3/14/20.
//  Copyright © 2020 Ali Jaradah. All rights reserved.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {

        ZStack {

            VStack{
                Text("Person Information").bold().foregroundColor(Color.white).font(.largeTitle).padding(.bottom,5)
                personImg()

                VStack{
                    LinearGradient(gradient: Gradient(colors: [.white, .white]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
                    Text("")
                    }.frame(height: 15).padding(.leading,20).padding(.trailing,20).padding(.top,20)

                
                ScrollView(.vertical) {
                
                VStack(spacing: 15){
                    UserProfileInfoRow(Info: .init(name: "Name : Ali Hyder Jaradah", idiug: "ID :120160852", email: "Email : alihyderjaradah@icloud.com", department: "Department : computer science", phone: "Phone :0595869491")).padding()
                                }
                            }
                            .padding(.horizontal, 15)
                            .padding(.bottom, 40)
                

                    
                  }
                }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}


struct personImg : View {
    var body: some View {
        HStack {
//            Image(systemName: "person.fill")
                Image("2")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .clipShape(Circle())
                    .frame(width: 150, height: 150)
        }
    }
}



struct UserProfileInfo: Identifiable {
    var id:UUID = UUID()
    var name:String
    var idiug:String
    var email:String
    var department:String
    var phone:String
}

struct UserProfileInfoRow: View {
    var Info:UserProfileInfo
    var body: some View {
            VStack{
                
                VStack (alignment: .leading, spacing: 5) {
                    Text(Info.name)
                    .foregroundColor(.white).bold().padding()
                    .cornerRadius(10.0)

                    Text(Info.idiug)
                    .foregroundColor(.white).bold().padding()
                    .cornerRadius(10.0)

                    Text(Info.email)
                    .foregroundColor(.white).bold().padding()
                    .cornerRadius(10.0)

                    Text(Info.department)
                    .foregroundColor(.white).bold().padding()
                    .cornerRadius(10.0)

                    Text(Info.phone)
                    .foregroundColor(.white).bold().padding()
                    .cornerRadius(10.0)

                }
            }
        

    }
}
struct UserProfileInfoRow_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileInfoRow(Info: UserProfileInfo(name: "TestName", idiug: "123456", email: "aa", department: "aa", phone: "aa"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
