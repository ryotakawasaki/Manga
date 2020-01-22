//
//  StopWatch.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/14.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI


class Stopwatch: ObservableObject {
    
    @Published var minCounter: Int = 1
    @Published var secCounter: Int = 0

    var timer = Timer()
    
    
    func start() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if self.secCounter == 0 {
                self.minCounter -= 1
            } else if self.secCounter == 0 && self.minCounter == 0 {
                           timer.invalidate()
                       }
        }
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if self.secCounter == 0 {
                self.secCounter = 59
            } else if self.secCounter == 0 && self.minCounter == 0 {
                timer.invalidate()
            } else {
                self.secCounter -= 1
            }
    }
    }
    
        func stop() {
        timer.invalidate()
    }
}
    
//    func reset() {
//        minCounter = 0
//        secCounter = 0
//        timer.invalidate()
//    }

