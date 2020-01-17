//
//  SearchView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/10.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//




import SwiftUI

struct SearchView: View {
    
    @State private var name: String = ""

       var body: some View {
        
        NavigationView {
//           VStack {
        VStack {
            HStack{
                    
                Image(systemName: "magnifyingglass")
                                      .padding()
                
                TextField("作品名・作者名で検索", text: $name)
    //               Text("Hello, \(name)!")
                    .padding()
                    
                NavigationLink (destination: ContentView()) {
                    Text("キャンセル")
                    .padding()
            }
//            Spacer()
        }.navigationBarTitle("")
        .navigationBarHidden(true)
            
        Spacer()
        
        }
            
        }
    }


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
}
