//
//  WebView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/18.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI
import WebKit



struct WebView: UIViewRepresentable {
    
    let request: URLRequest
    

    func makeUIView(context: Context) -> WKWebView {
          return WKWebView()
      }
      
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
          uiView.load(request)
      }
      
  }

#if DEBUG
struct WebView_Previews : PreviewProvider {
    static var previews: some View {
        WebView(request: URLRequest(url: URL(string: "http://www.aozorahack.net/api/v0.1/books")!))
    }
}
#endif


//struct WebView_Previews: PreviewProvider {
//    static var previews: some View {
//        WebView()
//    }
//}
