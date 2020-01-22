//
//  UserRow.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/18.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct UserRow: View {
    
    var user: User

    var body: some View {
        NavigationLink(destination: UserDetailView(user:user))
        {
           
            VStack (alignment: .leading) {
//                Text(String(user.id!))
//                Text(user.book_id!)
//                    .font(.headline)
//                    .fontWeight(.bold)
                Text(String(user.title!))
                    .font(.headline)
                    .fontWeight(.bold)
                Text(String(user.html_url!))
                    .font(.caption)
            }
        }
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user: User.example)
    }
}
