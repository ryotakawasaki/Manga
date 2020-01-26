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
    @EnvironmentObject var stopWatch: Stopwatch
    @EnvironmentObject var intimer: InTimer
    @State var isPlaying = false
    @State var isShowManga: Bool = false
    

    var body: some View {
        NavigationView {
            GeometryReader { geometry in
            ZStack {
                VStack {
            List {
                ForEach(self.networkManager.writer, id: \.title) { writer in
                    UserRow(writer: writer)
            } .disabled(!self.isPlaying)
        } .listStyle(GroupedListStyle())
            
            Button(action: {
                //self.stopwatch.stop()
                 self.isPlaying = false
               }) {
                Image(systemName: "timer")
                     .resizable()
                    .frame(width: 25,height: 25)
                    .offset(x: 160, y: -720)
                }.disabled(!self.isPlaying)
            .buttonStyle(PlainButtonStyle())
    
                    Text("\(self.stopWatch.hourCounter):\(self.stopWatch.minCounter)")

                .offset(x: 160, y: -718)

               }
                }
            
            } .navigationBarItems(leading: Button(action:{
                    if !self.isPlaying {
//                        self.intimer.start()
                                self.isPlaying = true
                    }
                            print("ここここここここここ")
                        }) {
                            Text("読む！")
                        })
           .onAppear(perform: {
                        self.networkManager.getAllUsers()
                    })
                .onAppear(perform: {
                    self.stopWatch.stop()
                })
        }
                
    }
    
}


struct ContentWriterView_Previews: PreviewProvider {
    static var previews: some View {
        ContentWriterView()
    }
}

