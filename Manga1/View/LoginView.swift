//
//  LoginView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/23.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State var mail = ""
    @State var password = ""
    @State var isShowmail:Bool = false
    @State var isShowpass:Bool = false
    @State var isError: Bool = false
     @State var errorTxt: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
            ZStack {
                Color("myColor").edgesIgnoringSafeArea(.all)
                VStack (alignment: .center){
            Image("loggo")
            .resizable()
                .frame(width: geometry.size.width / 1,
                    height: geometry.size.height / 2)
                Spacer()
                Text("ログイン")
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
                            self.errorTxt = "どちらも入力されていません"
                        } else if self.mail.isEmpty {
                            print("これもダメ")
                            self.isError.toggle()
                             self.errorTxt = "emailアドレスが入力されていません"
                        } else if self.password.isEmpty {
                            self.isError.toggle()
                            self.errorTxt = "パスワードが入力されていません"
                            self.isShowpass = true
                        } else {
                            print("おけ")
                        }
                })
                    {
                        AuthButton(title: "LOG IN")
                }
                    Spacer()
                NavigationLink(destination: SignupView()) {
                        Text("まだ登録がお済みでない方はこちら")
                    }
                }.alert(isPresented: self.$isError, content: {
                    Alert(title: Text("だめ！"), message: Text(self.errorTxt),dismissButton: .default(Text("OK")))}
                )
                }
            }
        }
        }
        }
        


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
