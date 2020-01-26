//
//  StopView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/19.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//
import SwiftUI

struct StopView: View {
    
    @State var isShowStop = false
    
    var body: some View {
        VStack(alignment: .center) {
//            NavigationView {
                Text("Modal View")
//            }.sheet(isPresented: self.$isShowStop) {
//                ChildView()
//            }
            
            Button(
                action: {
                    self.isShowStop = true
            },
                label: { Text("画面遷移（Modal）") }
            )
        }
        
    }
}

struct StopView_Previews: PreviewProvider {
    static var previews: some View {
        StopView()
    }
}
