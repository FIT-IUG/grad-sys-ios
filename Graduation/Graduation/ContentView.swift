//
//  ContentView.swift
//  Graduation
//
//  Created by Ali Jaradah on 2/15/20.
//  Copyright © 2020 Ali Jaradah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var page = "page1"
    @ObservedObject var viewRouter: ViewRouter
    var body: some View {
        VStack {
            if viewRouter.currentPage == "page1" {
                Login(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "page2" {
                Bar(viewRouter: viewRouter)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())

    }
}
