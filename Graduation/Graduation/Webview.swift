//
//  Webview.swift
//  Graduation
//
//  Created by Ali Jaradah on 3/17/20.
//  Copyright © 2020 Ali Jaradah. All rights reserved.
//

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
