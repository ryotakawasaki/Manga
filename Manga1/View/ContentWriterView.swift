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
    
    var body: some View {
        NavigationView {
            List {
                ForEach(networkManager.users, id: \.title) { user in
                    UserRow(user: user)
            }.navigationBarTitle("Writers")
            }
        }.listStyle(GroupedListStyle())
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .onAppear(perform: {
            self.networkManager.getAllUsers()
        })
    }
}


struct ContentWriterView_Previews: PreviewProvider {
    static var previews: some View {
        ContentWriterView()
    }
}

