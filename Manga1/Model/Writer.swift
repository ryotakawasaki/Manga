//
//  User.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/16.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import Foundation


struct Writer: Decodable, Identifiable {
    
    let id: Int?
    let title: String?
    let html_url: String?

    
    init(book_id: Int, title: String, html_url: String) {
           self.id = book_id
           self.title = title
           self.html_url = html_url

    }


    #if DEBUG
        static let example = Writer(book_id: 0, title: "銭形平次捕物控", html_url: "https://www.aozora.gr.jp/cards/001670/files/56406_69977.html")
        #endif


}
