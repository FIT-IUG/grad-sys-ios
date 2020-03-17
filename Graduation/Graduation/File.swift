//
//  ContentView.swift
//  testt
//
//  Created by Ali Jaradah on 2/17/20.
//  Copyright © 2020 Ali Jaradah. All rights reserved.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct Specialization {
static let UniversitySpecialization = [
 "Computer science",
 "Information technology systems",
 "Software Development",
 "Multimedia technology and web development",
 "Mobile computing and smart device applications"
]
static let IUniversitySpecialization = [
 "CS",
 "ITS",
 "SD",
 "MT",
 "MC"
]
}

struct YourImage : View {
    var body: some View {
        return Image("1")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 10)
    }
}

struct firstnameTextField : View {
    @Binding var firstname: String
    var body: some View {
        return TextField("firstname", text: $firstname)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(10.0)
            .padding(.trailing, 10)
            .padding(.leading, 10)
    }
}

struct secondnameTextField : View {
    @Binding var secondname: String
    var body: some View {
        return TextField("secondname", text: $secondname)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(10.0)
            .padding(.trailing, 10)
            .padding(.leading, 10)
    }
}

struct thirdnameTextField : View {
    @Binding var thirdname: String
    var body: some View {
        return TextField("thirdname", text: $thirdname)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(10.0)
            .padding(.trailing, 10)
            .padding(.leading, 10)
    }
}

struct UsernameTextFieldfirst : View {
    @Binding var username: String
    var body: some View {
        return TextField("Username", text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(10.0)
            .padding(.trailing, 10)
            .padding(.leading, 10)
    }
}

struct fourthnameTextField : View {
    @Binding var fourthname: String
    var body: some View {
        return TextField("fourthname", text: $fourthname)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(10.0)
            .padding(.trailing, 10)
            .padding(.leading, 10)
    }
}

struct idTextField : View {
    @Binding var id: String
    var body: some View {
        return TextField("id", text: $id)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(10.0)
            .padding(.trailing, 10)
            .padding(.leading, 10)
    }
}

struct specializationTextField : View {
    @Binding var specialization: String
    var body: some View {
        return TextField("specialization", text: $specialization)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(10.0)
            .padding(.trailing, 10)
            .padding(.leading, 10)
    }
}

struct emailTextField : View {
    @Binding var email: String
    var body: some View {
        return TextField("email", text: $email)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(10.0)
            .padding(.trailing, 10)
            .padding(.leading, 10)
    }
}

struct phoneTextField : View {
    @Binding var phone: String
    var body: some View {
        return TextField("phone", text: $phone)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(10.0)
            .padding(.trailing, 10)
            .padding(.leading, 10)
    }
}

struct passwordTextField : View {
    @Binding var password: String
    var body: some View {
        return TextField("password", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(10.0)
            .padding(.trailing, 10)
            .padding(.leading, 10)
    }
}

struct confirmedPasswordTextField : View {
    @Binding var confirmedPassword: String
    var body: some View {
        return TextField("confirmedPassword", text: $confirmedPassword)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(10.0)
            .padding(.trailing, 10)
            .padding(.leading, 10)
    }
}

struct view1 : View {
    @State var firstname: String = ""
    @State var secondname: String = ""
    @State var thirdname: String = ""
    @State var fourthname: String = ""
    @State private var showLogin = false
    @State private var presentSignupSheet = false

    var body: some View {
        ZStack{
        LinearGradient(gradient: Gradient(colors: [.gray, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
        VStack {
         YourName()
         
        firstnameTextField(firstname: $firstname)
         .opacity(showLogin ? 1 : 0)
         .offset(x: showLogin ? 0 : -200)
         .animation(Animation.easeOut(duration: 1.0).delay(0.5))

         secondnameTextField(secondname: $secondname)
         .opacity(showLogin ? 1 : 0)
         .offset(x: showLogin ? 0 : -200)
         .animation(Animation.easeOut(duration: 1.0).delay(1.0))

         thirdnameTextField(thirdname: $thirdname)
         .opacity(showLogin ? 1 : 0)
         .offset(x: showLogin ? 0 : -200)
         .animation(Animation.easeOut(duration: 1.0).delay(1.5))

         fourthnameTextField(fourthname: $fourthname)
         .opacity(showLogin ? 1 : 0)
         .offset(x: showLogin ? 0 : -200)
         .animation(Animation.easeOut(duration: 1.0).delay(2.0))
        
        Button(action: { self.presentSignupSheet.toggle()}) {
          HStack {
            Text("Next")
            .font(.headline)
             .foregroundColor(.white)
             .padding()
             .frame(width: 200, height: 60)
             .background(Color.gray)
             .cornerRadius(15.0)
             .padding(.top, 10)
              }
          }.sheet(isPresented: self.$presentSignupSheet) {
            view2()
          }.opacity(showLogin ? 1 : 0)
          .offset(x: showLogin ? 0 : -200)
          .animation(Animation.easeOut(duration: 1.0).delay(2.5))
            
        }.onAppear(){
                self.showLogin = true
            }
        }
    }
}

struct view2 : View {
    @State var id: String = ""
    @State var specialization: String = ""
    @State var email: String = ""
    @State var phone: String = ""
    @State private var showLogin = false
    @State private var presentSignupSheet = false

    var body: some View {
        ZStack{
        LinearGradient(gradient: Gradient(colors: [.gray, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
        VStack {
            FaculayInfo()
            
            idTextField(id: $id)
                    .opacity(showLogin ? 1 : 0)
                    .offset(x: showLogin ? 0 : -200)
                    .animation(Animation.easeOut(duration: 1.0).delay(0.5))
            specializationTextField(specialization: $specialization)
                    .opacity(showLogin ? 1 : 0)
                    .offset(x: showLogin ? 0 : -200)
                    .animation(Animation.easeOut(duration: 1.0).delay(1.0))
//            emailTextField(email: $email)
//                    .opacity(showLogin ? 1 : 0)
//                    .offset(x: showLogin ? 0 : -200)
//                    .animation(Animation.easeOut(duration: 1.0).delay(1.0))
//            phoneTextField(phone: $phone)
//                    .opacity(showLogin ? 1 : 0)
//                    .offset(x: showLogin ? 0 : -200)
//                    .animation(Animation.easeOut(duration: 1.0).delay(1.0))
                
       Button(action: {self.presentSignupSheet.toggle()}) {
        HStack {
        Text("Next")
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .frame(width: 200, height: 60)
        .background(Color.gray)
        .cornerRadius(15.0)
        .padding(.top, 10)
        }
        }.sheet(isPresented: self.$presentSignupSheet) {
        view3()
       }.opacity(showLogin ? 1 : 0)
        .offset(x: showLogin ? 0 : -200)
        .animation(Animation.easeOut(duration: 1.0).delay(1.5))
            
        }.onAppear(){
            self.showLogin = true
            }
        }
    }
}
struct view3 : View {
    @State var email: String = ""
    @State var phone: String = ""
    @State private var showLogin = false
    @State private var presentSignupSheet = false

    var body: some View {
        ZStack{
        LinearGradient(gradient: Gradient(colors: [.gray, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
        VStack {
            communication()
            
            emailTextField(email: $email)
                    .opacity(showLogin ? 1 : 0)
                    .offset(x: showLogin ? 0 : -200)
                    .animation(Animation.easeOut(duration: 1.0).delay(0.5))
            phoneTextField(phone: $phone)
                    .opacity(showLogin ? 1 : 0)
                    .offset(x: showLogin ? 0 : -200)
                    .animation(Animation.easeOut(duration: 1.0).delay(1.0))
                
       Button(action: {self.presentSignupSheet.toggle()}) {
        HStack {
        Text("Next")
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .frame(width: 200, height: 60)
        .background(Color.gray)
        .cornerRadius(15.0)
        .padding(.top, 10)
        }
        }.sheet(isPresented: self.$presentSignupSheet) {
        view4()
       }.opacity(showLogin ? 1 : 0)
        .offset(x: showLogin ? 0 : -200)
        .animation(Animation.easeOut(duration: 1.0).delay(1.5))
            
        }.onAppear(){
            self.showLogin = true
            }
        }
    }
}
struct view4 : View {
    @State var password: String = ""
    @State var confirmedPassword: String = ""
    @State private var showLogin = false
    @State private var presentSignupSheet = false

    var body: some View {
        ZStack{
        LinearGradient(gradient: Gradient(colors: [.gray, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
        VStack {
        Password()
            
        passwordTextField(password: $password).opacity(showLogin ? 1 : 0)
        .offset(x: showLogin ? 0 : -200)
        .animation(Animation.easeOut(duration: 1.0).delay(0.5))
         confirmedPasswordTextField(confirmedPassword: $confirmedPassword).opacity(showLogin ? 1 : 0)
         .offset(x: showLogin ? 0 : -200)
         .animation(Animation.easeOut(duration: 1.0).delay(1.0))
            
        Button(action: {self.presentSignupSheet.toggle()}) {
        HStack {
            Text("finish")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 60)
                        .background(Color.gray)
                        .cornerRadius(15.0)
                        .padding(.top, 10)
                         }
                     }.sheet(isPresented: self.$presentSignupSheet) {
                         view1()
                     }.opacity(showLogin ? 1 : 0)
                     .offset(x: showLogin ? 0 : -200)
                     .animation(Animation.easeOut(duration: 1.0).delay(1.5))
            }.onAppear(){
                    self.showLogin = true
            }
        }
    }
}

struct YourName : View {
    var body: some View {
        return Text("Your name")
            .font(.title)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .padding(.bottom, 10)
    }
}
struct FaculayInfo : View {
    var body: some View {
        return Text("Faculay Information")
            .font(.title)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .padding(.bottom, 10)
    }
}
struct communication : View {
    var body: some View {
        return Text("Communication")
            .font(.title)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .padding(.bottom, 10)
    }
}
struct Password : View {
    var body: some View {
        return Text("Password")
            .font(.title)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .padding(.bottom, 10)
    }
}
struct ContentView: View {
    @State var img: String = ""
    @State var year = 1
    var body: some View {
        view1()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
