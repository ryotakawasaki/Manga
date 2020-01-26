//
//  SignupView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/23.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct SignupView: View {
    
    @State var showModal: Bool = false
    
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    //アラート発火: Bool
    @State var showAlert = false
    
    //エラーかどうか
    @State var isError: Bool = false
    //エラー文代入
    @State var errorTxt: String = ""
    
    @EnvironmentObject var userStore: UserStore
    
    func signUp() {
        
        userStore.signUp(email: email, password: password) {(result, error) in
            if error != nil {
                self.isError = true
                self.errorTxt = error?.localizedDescription ?? "nil"
            } else {
                let changeRequest = result?.user.createProfileChangeRequest()
                changeRequest?.displayName = self.username
                changeRequest?.commitChanges(completion: { (error) in
                    if let error = error {
                        debugPrint(error.localizedDescription)
                    }
                })
                let user = User(uid: result?.user.uid ?? "", displayName: result?.user.displayName ?? "", email: result?.user.email ?? "")
                self.userStore.setData(user: user)
                self.username = ""
                self.email = ""
                self.password = ""
            }
        }
    }
    
    
    var body: some View {
        VStack {
            Text("SIGN UP")
                .fontWeight(.heavy)
                .font(.title)
            TextField("Username", text: $username)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 15)
            TextField("Email", text: $email)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 15)
                .autocapitalization(.none)
            SecureField("Password", text: $password)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 15)
            Button(action: {
                print("Button tapped")
                
                
                if self.username.isEmpty {
                    print("あれ")
                    self.isError.toggle()
                    self.errorTxt = "ユーザー名が入力されていません"
                } else if self.email.isEmpty {
                    self.isError.toggle()
                    self.errorTxt = "emailアドレスが入力されていません"
                } else if self.password.isEmpty {
                    self.isError.toggle()
                    self.errorTxt = "パスワードが入力されていません"
                } else {
                    self.signUp()
                }
            }) {
                AuthButton(title: "SIGN UP")
            }
            Spacer()
        }.padding()
            .alert(isPresented: $isError, content: {
                Alert(title: Text("Error"), message: Text(self.errorTxt), dismissButton: .default(Text("OK")))
            })
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
