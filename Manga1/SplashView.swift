//
//  SplashView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/26.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct SplashView: View {
    @State var isLogin: Bool = false
     @EnvironmentObject var userStore: UserStore

    func getUser() {
              userStore.listen()
          }
       
    
    var body: some View {
        Group {
          if(userStore.user != nil)  {
                ContentView()
            } else {
                 LoginView()
            }
        }.onAppear(perform: getUser)

    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
