//
//  NetworkManager.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/16.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import Foundation


class NetworkManager: ObservableObject {
    
    @Published var users: [User] = [.init(book_id: 0, title: "", html_url: "")]
    
    func getAllUsers() {
        guard let url = URL(string: "http://www.aozorahack.net/api/v0.1/books") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                let users = try JSONDecoder().decode([User].self, from: data!)
                DispatchQueue.main.async {
                    self.users = users
                    print(self.users)
                }
            } catch {
                print("Failed To decode: ", error)
            }
        }.resume()
    }
}
