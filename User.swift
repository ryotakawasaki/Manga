//
//  User.swift
//  
//
//  Created by 川崎綾太 on 2020/01/26.
//

import Foundation


import Foundation
class User {
    var uid: String
    var displayname: String
    var email: String
   
    
    init(uid: String, displayName: String, email: String) {
        self.uid = uid
        self.displayname = displayName
        self.email = email
    }
}

