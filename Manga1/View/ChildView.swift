//
//  ChildView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/10.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct ChildView: View {
    
    @ObservedObject var inTimer = InTimer()
    @State var isPlayingIn = false
    
    var body: some View {
        Text("Hello")
//        NavigationView{
//        ZStack {
//             Color("myColor").edgesIgnoringSafeArea(.all)
//
//            VStack {
//                HStack {
//                    Spacer()
//                    NavigationLink(destination: ContentView()) {
//                        Text("入店")
//                    }
//
////                    Button(action: {
////                        if !self.isPlayingIn {
////                            self.inTimer.start()
////                            self.isPlayingIn = true
////                        }
////                    }) {
////                        Text("入店")
////                            .foregroundColor(Color.blue)
////                    }.disabled(isPlayingIn)
////
//                    NavigationLink(destination: ChargeView()) {
//                                           Text("退出")
//                                       }
//                    Spacer()
//                }
////            NavigationLink(destination: ContentWriterView()) {
////            Text("初回10分無料!漫画を読む")
////                }
//            }
//            }.font(.largeTitle)
//        }
//    }
}
}

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
        ChildView()
    }
}
