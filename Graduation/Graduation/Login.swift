//
//  Login.swift
//  Graduation
//
//  Created by Ali Jaradah on 3/14/20.
//  Copyright © 2020 Ali Jaradah. All rights reserved.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
let storedUsername = "A"
let storedPassword = "a"

struct TitleText : View {
    var body: some View {
        return Text("Graduation projects")
            .font(.title)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .padding(.bottom, 10)
    }
}

struct StartImage : View {
    var body: some View {
        return Image("1")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 200)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 25)
    }
}

struct UsernameTextField : View {
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

struct PasswordSecureField : View {
    @Binding var password: String
    var body: some View {
        return SecureField("Password", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(10.0)
            .padding(.trailing, 10)
            .padding(.leading, 10)
    }
}

struct LoginButton : View {
    var body: some View {
        return Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 200, height: 60)
            .background(Color.gray)
            .cornerRadius(15.0)
            .padding(.top, 10)
    }
}
struct Login: View {
    
      @ObservedObject var viewRouter: ViewRouter

       @State var username: String = ""
       @State var password: String = ""
       
       @State var authenticationDidFail: Bool = false
       @State var authenticationDidSucceed: Bool = false
       
       @State private var presentSignupSheet = false
       @State private var presentPasswordRecoverySheet = false

       @State private var showLogin = false


    var body: some View {
        
        ZStack {
          
            LinearGradient(gradient: Gradient(colors: [.black, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
        

            
            VStack {
           
            TitleText()
            StartImage()
            .scaleEffect(showLogin ? 1 : 0).animation(Animation.easeIn(duration: 1.5).delay(0.5))
                
                UsernameTextField(username: $username)
                .opacity(showLogin ? 1 : 0)
                .offset(x: showLogin ? 0 : -200)
                .animation(Animation.easeOut(duration: 1.0).delay(1.0))

            PasswordSecureField(password: $password)
                .opacity(showLogin ? 1 : 0)
                .offset(x: showLogin ? 0 : -200)
                .animation(Animation.easeOut(duration: 1.0).delay(1.5))

            
            if authenticationDidFail {
                Text("Information not correct. Try again.")
                    .offset(y: 4)
                    .foregroundColor(.red)
            }
            
            
            Button(action: {
                if self.username == storedUsername && self.password == storedPassword {
                    self.authenticationDidSucceed = true
                    self.authenticationDidFail = false
                    self.viewRouter.currentPage = "page2"
                } else {
                    self.authenticationDidFail = true
                }
            }){
                LoginButton()
            }.opacity(showLogin ? 1 : 0)
            .offset(x: showLogin ? 0 : -200)
            .animation(Animation.easeOut(duration: 1.0).delay(2.0))

            }.padding()
            .onAppear(){
             self.showLogin = true
            }

            if authenticationDidSucceed {
                    Text("Login succeeded!")                        .animation(Animation.linear)
                        .font(.headline)
                        .frame(width: 250, height: 80)
                        .background(Color.gray)
                        .cornerRadius(20.0)
                        .foregroundColor(.white)
                }
            
        }
    }
}
struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(viewRouter: ViewRouter())
    }
}
