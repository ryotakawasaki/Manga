//
//  UserStore.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/26.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import Firebase

class UserStore : ObservableObject {
    var db = Firestore.firestore()
    var handle: AuthStateDidChangeListenerHandle?
    
    @Published var user: User?
    
    func listen () {
        handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            if let user = user {
                // もしユーザーを取得できたら、Userモデルを生成
                print("Got user: \(user)")
                        self.user = User(
                            uid: user.uid,
                            displayName: user.displayName ?? "",
                            email: user.email ?? ""
                        )
                    } else {
                // if we don't have a user, set our session to nil
                self.user = nil
            }
        }
    }
    
    
    func signUp(
            email: String,
            password: String,
            handler: @escaping AuthDataResultCallback
        ) {
            Auth.auth().createUser(withEmail: email, password: password, completion: handler)
        }
        
        func signIn(
            email: String,
            password: String,
            handler: @escaping AuthDataResultCallback
        ) {
            Auth.auth().signIn(withEmail: email, password: password, completion: handler)
        }
    
        @discardableResult
        func signOut () -> Bool {
            do {
                try Auth.auth().signOut()
                self.user = nil
                return true
            } catch {
                return false
            }
        }
    func setData(user: User) {
          db.collection(Constants.users).document(user.uid).setData([
              Constants.userId: user.uid,
              Constants.email: user.email,
              Constants.name: user.displayname
          ])
      }
    
    }
