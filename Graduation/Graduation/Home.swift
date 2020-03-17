//
//  Home.swift
//  Graduation
//
//  Created by Ali Jaradah on 3/14/20.
//  Copyright © 2020 Ali Jaradah. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State private var name = ""
    @State private var id = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var department = ""
   
    private func isUserInformationValid() -> Bool {
        if name.isEmpty {
            return false
        }
        
        if id.isEmpty {
            return false
        }
        
        if email.isEmpty {
            return false
        }
        
        if phone.isEmpty {
            return false
        }
        
        if department.isEmpty {
            return false
        }
        
        return true
    }
    
    var body: some View {
        ZStack {

            VStack{
                Text(" Home ").bold().foregroundColor(Color.white).font(.largeTitle).padding(.bottom,5)

                
                        NavigationView {
                            Form {
                                Section(header: Text("Add Frined Details")) {
                                    TextField("Name",text: $name)
                                    TextField("Id",text: $id)
                                    TextField("email",text: $email)
                                    TextField("phone",text: $phone)
                                    
                                    Picker(selection: $department,
                                           label: Text("Department")) {
                                            ForEach(Department.allLocations, id: \.self) { department in
                                                Text(department).tag(department)
                                            }
                                    }
                                    
                                    
                                    if self.isUserInformationValid() {
                                        Button(action: {
                                            print("Add Frined")
                                        }, label: {
                                            Text("Add Frined").bold()
                                            })
                                    }
                                    
                                    
                                }
                            }.navigationBarTitle(Text("Profile"))
                        }
                    
                    
            
                            }
                            .padding(.horizontal, 1)
                            .padding(.bottom, 40)
                

                    
                  }
                }
    }


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


struct Department {
    static let allLocations = [
        "Computer science",
        "Information technology systems",
        "Software development",
        "Multimedia technology and web development",
        "Mobile computing and smart device applications"
    ]
}

import Foundation
import SwiftUI
import WebKit

struct Webview : UIViewRepresentable{
    var url: String
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.url) else {
        return WKWebView()
        }
        let request = URLRequest(url: url)
        let wkWebview = WKWebView()
        wkWebview.load(request)
        return wkWebview
    }
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Webview>){
    }
}
