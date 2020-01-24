//
//  SignupView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/23.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct SignupView: View {
    
    @State var mail = ""
     @State var password = ""
        @State var username = ""
    @State var isShow = false
    @State var isError: Bool = false
        @State var errorTxt: String = ""
    
    var body: some View {
        GeometryReader { geometry in
        ZStack {
        Color("myColor").edgesIgnoringSafeArea(.all)
        
        VStack {
            
            Image("loggo")
            .resizable()
            .frame(width: geometry.size.width / 1,
                    height: geometry.size.height / 2)
            Spacer()
        TextField("username", text: self.$username)
            .textFieldStyle(RoundedBorderTextFieldStyle())
                               .padding()
        Spacer()
        TextField("e-mail.addres", text: self.$mail)
            .textFieldStyle(RoundedBorderTextFieldStyle())
                               .padding()
        Spacer()
        SecureField("password", text: self.$password)
            .textFieldStyle(RoundedBorderTextFieldStyle())
                               .padding()
        Spacer()
            
            Button(action: {
                                   if self.mail.isEmpty && self.password.isEmpty {
                                                              print("だめ")
                                                              self.isError.toggle()
                                                              self.errorTxt = "どれも入力されていません"
                                                          } else if self.username.isEmpty {
                                                          print("あれ")
                                                          self.isError.toggle()
                                                          self.errorTxt = "ユーザー名が入力されていません"
                                                          }
                                                          else if self.mail.isEmpty {
                                                              print("これもダメ")
                                                              self.isError.toggle()
                                                               self.errorTxt = "emailアドレスが入力されていません"
                                                          } else if self.password.isEmpty {
                                                              self.isError.toggle()
                                                              self.errorTxt = "パスワードが入力されていません"
                                                          } else {
                                                              print("おけ")
                                                          }
                           })
                               {
                                 AuthButton(title: "SIGN UP")
                           }
    }
            }.alert(isPresented: self.$isError, content: {
            Alert(title: Text("だめ！"), message: Text(self.errorTxt),dismissButton: .default(Text("OK")))})
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
