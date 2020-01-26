//
//  LoginView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/26.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    //Modal発火: Bool
    @State var showModal: Bool = false
    
    @State var email: String = ""
    @State var password: String = ""
    
    //アラート発火: Bool
    @State var showAlert = false
    
    //エラーかどうか
    @State var isError: Bool = false
    //エラー文代入
    @State var errorTxt: String = ""
     @EnvironmentObject var userStore: UserStore

    
    func signIn() {
            
        userStore.signIn(email: email, password: password) { (result, error) in
            if error != nil {
                self.isError.toggle()
                self.errorTxt = error?.localizedDescription ?? "nil"
                print(error?.localizedDescription ?? "nil")
            } else {
                self.email = ""
                self.password = ""
            }
        }
    }
    
    var body: some View {
        
        VStack {
            Text("LOGIN")
                .fontWeight(.heavy)
                .font(.title)
            TextField("Email", text: $email)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 15)
            SecureField("Password", text: $password)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 15)
            Button(action: {
                print("Button tapped")
                self.signIn()
            
                if self.email.isEmpty {
                    self.isError.toggle()
                    self.errorTxt = "emailアドレスが入力されていません"
                } else if self.password.isEmpty {
                    self.isError.toggle()
                    self.errorTxt = "パスワードが入力されていません"
                } else {
                    
                }
            }) {
                AuthButton(title: "LOGIN")
            }
            Button(action: {
                // action
                self.showModal.toggle()
            }){
                Text("Don't have an account? Sign up")
            }.padding(.top, 8)
            Spacer()
        }.padding()
            .alert(isPresented: $isError, content: {
                Alert(title: Text("Error"), message: Text(self.errorTxt), dismissButton: .default(Text("OK")))
            })
            .sheet(isPresented: self.$showModal) {
                SignupView().environmentObject(self.userStore)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
