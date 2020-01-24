//
//  AuthButton.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/24.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct AuthButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.headline)
            .fontWeight(.heavy)
            .padding()
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width - 60)
            .background(Color.blue)
            .cornerRadius(10.0)
    }
}

struct AuthButton_Previews: PreviewProvider {
    static var previews: some View {
        AuthButton(title: "")
    }
}
