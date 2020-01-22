//
//  TabView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/10.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct TabNavView: View {
    
    @ObservedObject var stopwatch = Stopwatch()
    @State var isPlaying = false
    @State var isShowing = true
    

    
    
    var body: some View {
        TabView {
           ContentView()
                
               
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                
            RecomendView()
                      .tabItem {
                          Image(systemName: "pencil")
                          Text("Recomend")
//                        self.stopwatch.stop()
//                        self.isPlaying = false
                }
            
            
//                        ChildView()
//                                   .tabItem {
//                                       Image(systemName: "heart.circle")
//                                       Text("secret")
//                }
            }
        }
        
    }

struct TabNavView_Previews: PreviewProvider {
    static var previews: some View {
        TabNavView()
    }
}
