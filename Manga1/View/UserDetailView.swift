//
//  UserDetailView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/18.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//
import SwiftUI

struct UserDetailView: View {
    
    var user: User
    
    var body: some View {
        VStack {
            WebView(request: URLRequest(url: (URL(string: user.html_url!))!))
        }
    
    }
}


//
//struct UserDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserDetailView()
//    }
//}
