//
//  NetworkManager.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/16.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import Foundation


class NetworkManager: ObservableObject {
    
    @Published var writer: [Writer] = [.init(book_id: 0, title: "", html_url: "")]
    
    func getAllUsers() {
        guard let url = URL(string: "http://www.aozorahack.net/api/v0.1/books") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                let writer = try JSONDecoder().decode([Writer].self, from: data!)
                DispatchQueue.main.async {
                    self.writer = writer
                    print(self.writer)
                }
            } catch {
                print("Failed To decode: ", error)
            }
        }.resume()
    }
}
