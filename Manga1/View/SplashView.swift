//
//  SplashView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/23.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct SplashView: View {
    
    @State var isLogin: Bool = false
    
       var body: some View {
           
           Group {
               if isLogin {
                   ContentView()
               } else {
                   LoginView()
               }
           }
       }
   }


struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
