//
//  InTimer.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/23.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import Foundation

class InTimer: ObservableObject {
    
    @Published var counterIn: Int = 0
    
    var intimer = Timer()
    
    func start() {
        self.intimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.counterIn += 1
         print(self.counterIn)
        }
    }
    
    func stop() {
        intimer.invalidate()
        if counterIn < 1800 {
            print("300円だよ")
        } else if counterIn < 3600 {
            print("500円だよ")
        }
    }
    
    func reset() {
        counterIn = 0
        intimer.invalidate()
    }
}
