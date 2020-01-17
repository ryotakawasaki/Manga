//
//  StopWatch.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/14.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI


class Stopwatch: ObservableObject {
    
    @Published var counter: Int = 10
    
    var timer = Timer()
    
    func start() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 60, repeats: true) { timer in
            self.counter -= 1
        }
    }
    
    func stop() {
        timer.invalidate()
    }
    
    func reset() {
        counter = 0
        timer.invalidate()
    }
}
