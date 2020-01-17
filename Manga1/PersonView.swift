//
//  PersonView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/15.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct PersonView: View {
    var body: some View {
        
         NavigationView {
        
            VStack {
                HStack {
                    NavigationLink (destination: ContentView()) {
                    Image(systemName: "lessthan")
                    }.navigationBarTitle("")
                    .navigationBarHidden(true)
                
            Text("閲覧履歴")
        
                }
                
//                .navigationBarTitle("")
//                    .navigationBarHidden(true)
            }
           
        }
}
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView()
    }
}
