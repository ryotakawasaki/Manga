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
        ZStack {
             Color("myColor").edgesIgnoringSafeArea(.all)
            
            VStack {
//                Text("\(self.inTimer.counterIn)")
//                    .font(.largeTitle)
//                    .fontWeight(.heavy)
//                    .padding(.top, 50)
                HStack {
                    Spacer()
                    Button(action: {
                        if !self.isPlayingIn {
                            self.inTimer.start()
                            self.isPlayingIn = true
                        }
                    }) {
                        Text("入店")
                            .foregroundColor(Color.blue)
                    }.disabled(isPlayingIn)
                        Spacer()
                    Button(action: {
                        self.inTimer.stop()
                        self.isPlayingIn = false
                    }) {
                        Text("退出")
                        .foregroundColor(Color.red)
                    }.disabled(!isPlayingIn)
                    Spacer()
                }
//            NavigationLink(destination: ContentWriterView()) {
//            Text("初回10分無料!漫画を読む")
//                }
            }
            }.font(.largeTitle)
        }
    }

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
        ChildView()
    }
}
