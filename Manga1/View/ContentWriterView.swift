//
//  ContentWriterView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/18.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct ContentWriterView: View {
    
    @ObservedObject var networkManager: NetworkManager = NetworkManager()
    @ObservedObject var stopwatch: Stopwatch = Stopwatch()
    @State var isPlaying = false
    @State var isShowManga: Bool = false
    
//    func desplaychange () {
//        if self.stopwatch.minCounter == 0 && self.stopwatch.secCounter == 0{
//            self.isShowManga = true
//                  } else { print("何もなし！")}
//    }
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
            ZStack {
                VStack {
            List {
                ForEach(self.networkManager.users, id: \.title) { user in
                    UserRow(user: user)
            } .disabled(!self.isPlaying)
        } .listStyle(GroupedListStyle())
            
            Button(action: {
                self.stopwatch.stop()
                 self.isPlaying = false
               }) {
                Image(systemName: "timer")
                     .resizable()
                    .frame(width: 25,height: 25)
                    .offset(x: 160, y: -720)
                }.disabled(!self.isPlaying)
            .buttonStyle(PlainButtonStyle())
    
            Text("\(self.stopwatch.hourCounter):\(self.stopwatch.minCounter)")
//                    if self.stopwatch.minCounter == 0 && self.stopwatch.secCounter == 0{
//                        self.isShowManga = true
//                    } else { print("何もなし！") }
                
                
                .offset(x: 160, y: -715)
               }
                }
            }.navigationBarItems(leading: Button(action:{
                        if !self.isPlaying {
                            self.stopwatch.start()
                            self.isPlaying = true}
                        print("ここここここここここ")
            //            UserDefaults.standard.set(self.stopwatch.minCounter, forKey: "min")
            //            UserDefaults.standard.set(self.stopwatch.secCounter, forKey: "sec")
                    }) {
                        Text("タイマースタート")
                    })
                   
                    .onAppear(perform: {
                        self.networkManager.getAllUsers()
                    })
                .onAppear(perform: {
                    self.stopwatch.stop()
                })
    
    }
}
}

struct ContentWriterView_Previews: PreviewProvider {
    static var previews: some View {
        ContentWriterView()
    }
}

