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
    @ObservedObject var stopwatch = Stopwatch()
    
    var body: some View {
        VStack {
            WebView(request: URLRequest(url: (URL(string: user.html_url!))!))
            }
//        .onAppear(perform: {
//                self.stopwatch.start()
//
//
//            })

//        .navigationBarItems(trailing: Button(action: {
//               print("ログアウトメソッド")
//           }) {
//            Image(systemName: "timer")
//                 .resizable()
//                .frame(width: 25,height: 25)
//        Text("\(self.stopwatch.minCounter):\(self.stopwatch.secCounter)")
//           }).buttonStyle(PlainButtonStyle())
//
    }
}


//
//struct UserDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserDetailView()
//    }
//}
