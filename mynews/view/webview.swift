//
//  webview.swift
//  mynews
//
//  Created by user on 06/05/2020.
//

import SwiftUI
import WebKit

struct webview: UIViewRepresentable {
    let url: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = url{
            if let ur = URL(string: safeString){
                let request = URLRequest(url: ur)
                uiView.load(request)
            }
        }
    }
}


