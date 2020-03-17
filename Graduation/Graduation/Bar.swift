//
//  Bar.swift
//  Graduation
//
//  Created by Ali Jaradah on 3/14/20.
//  Copyright © 2020 Ali Jaradah. All rights reserved.
//

import SwiftUI

struct Bar: View {
    @ObservedObject var viewRouter: ViewRouter
    @State var selected = 0

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
        VStack{
            Spacer()
            ZStack(alignment: .bottom){
                BottomBar(selected: self.$selected)
                    .padding()
                    .background(Color.clear)
            }

        }.background(Color("Color").edgesIgnoringSafeArea(.top))
            
            if selected == 0{
                Home()
            }
            if selected == 1{
                UserProfile()
            }
            if selected == 2{
                AddFriend()
            }
            if selected == 3{
                MyGroup()
            }
            
        }
    }
}

struct Bar_Previews: PreviewProvider {
    static var previews: some View {
        Bar(viewRouter: ViewRouter())
    }
}

struct BottomBar : View {
    @Binding var selected : Int

    var body : some View{
        HStack{
            Button(action: {
                self.selected = 0
            }) {
                Image(systemName: "house.fill")
            }.foregroundColor(self.selected == 0 ? .white : .gray)
            Spacer(minLength: 12)
            Button(action: {
                self.selected = 1
            }) {
                Image(systemName: "person.fill")
            }.foregroundColor(self.selected == 1 ? .white : .gray)
            Spacer().frame(width: 120)
            Button(action: {
                self.selected = 2
            }) {
                Image(systemName: "person.badge.plus.fill")
            }.foregroundColor(self.selected == 2 ? .white : .gray)
            .offset(x: -10)
            Spacer(minLength: 12)
            Button(action: {
                self.selected = 3
            }) {
                Image(systemName: "person.3.fill")
            }.foregroundColor(self.selected == 3 ? .white : .gray)
        }
    }
}
