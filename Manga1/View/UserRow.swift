//
//  UserRow.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/18.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct UserRow: View {
    
    var writer: Writer
    @EnvironmentObject var intimer: InTimer

    var body: some View {
        NavigationLink(destination: UserDetailView(writer:writer))
        {
           VStack (alignment: .leading) {
//                Text(String(user.id!))
//                Text(user.book_id!)
//                    .font(.headline)
//                    .fontWeight(.bold)
                Text(String(writer.title!))
                    .font(.headline)
                    .fontWeight(.bold)
                Text(String(writer.html_url!))
                    .font(.caption)
            }
        }
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(writer: Writer.example)
    }
}
