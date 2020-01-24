//
//  RealUser.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/24.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import Foundation

class RealUser {
    var uid: String
    var displayname: String
    var email: String
    
    init(uid: String, displayName: String, email: String) {
        self.uid = uid
        self.displayname = displayName
        self.email = email
    }
}
