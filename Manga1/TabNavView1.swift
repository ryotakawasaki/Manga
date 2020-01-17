//
//  TabNavView1.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/10.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import Foundation

TabView {
           Text("Love")
               .tabItem {
                   Image(systemName: "star.circle")
                   Text("いずみ")
               }
               
          Text("Cute")
                     .tabItem {
                         Image(systemName: "pencil")
                         Text("しみず")
               }
                       Text("Third")
                                  .tabItem {
                                      Image(systemName: "house")
                                      Text("Menu")
               }
           }
