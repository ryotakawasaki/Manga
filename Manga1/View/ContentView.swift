//
//  ContentView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/10.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var stopwotch: Stopwatch
     @EnvironmentObject var intimer: InTimer
    @State var isPlaying = false
    @State var isShowing = true
    @ObservedObject var networkManager = NetworkManager()
    
    let min = UserDefaults.standard.integer(forKey: "min")
    let sec = UserDefaults.standard.integer(forKey: "sec")
    
    
    var body: some View {
        TabView {
            ContentWriterView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
            }
            
            TimerView()
                .tabItem {
                    Image(systemName: "timer")
                    Text("Timer")
            }
            
            
            
            
        }
//        NavigationView {
//        GeometryReader {
//                geometry in
//        VStack {
//            HStack {
//                NavigationLink(destination: SearchView())
//                    {
//                Image(systemName: "magnifyingglass")
//                    .padding()
//                }.buttonStyle(PlainButtonStyle())
//
//                Picker(selection: self.$isShowing, label: Text("What is your favorite color?")) {
//                    Text(String(self.min)).tag(0)
//                    Text(String(self.sec)).tag(1)
//                    Text("女性").tag(2)
//                }.pickerStyle(SegmentedPickerStyle())
//                .padding()
//
//                NavigationLink(destination: StopView()){
//                Image(systemName: "person")
//                .padding()
//                }.buttonStyle(PlainButtonStyle())
//            }.navigationBarTitle("")
//            .navigationBarHidden(true)
//            Spacer()
//
//            Image(systemName: "timer")
//                    .resizable()
//                    .frame(width: geometry.size.width / 3,
//                           height: geometry.size.height / 4)
//            NavigationLink(destination: ChildView()) {
//               Text("初回無料！残り\(self.stopwatch.minCounter):\(self.stopwatch.secCounter)")
//                              .font(.largeTitle)
//                              .fontWeight(.heavy)
//                              .padding(.top, 50)
//                }
//            Spacer()
//
//            HStack {
//            Button(action: {
//                      if !self.isPlaying {
//                        self.stopwatch.start()
//                        self.isPlaying = true}
//                    }) {
//                Text("Start")
//                    }.disabled(self.isPlaying)
//
//            Button(action: {
//                    self.stopwatch.stop()
//                    self.isPlaying = false
//                })
//            {
//                Text("Stop")
//            }
//            .disabled(!self.isPlaying)
//        }
//
//        Spacer()
//                Text("読みたい作品が決まったらStartを押してね！")
//                    Text("↓↓10万冊が読み放題！↓↓")
//
//                    NavigationLink(destination: ChildView())
//                    {
//                        Image("alldata")
//                        .resizable()
//                        .frame(width: geometry.size.width / 1,
//                        height: geometry.size.height / 4)
//                    }.buttonStyle(PlainButtonStyle())
//                    .disabled(!self.isPlaying)
//
//                    }
//                }
//            }
        }
}
                            

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


