//
//  StopWatch.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/14.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI


class Stopwatch: ObservableObject {
    
    @Published var hourCounter: Int = 0
    @Published var minCounter: Int = 0
    @Published var secCounter: Int = 0
    @State var isShowManga: Bool = false
    @State var isWorking: Bool = false

    var timer = Timer()
    
    
    func start() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            print("タタタタタタタッタタタタ")
            if self.minCounter == 60 {
                self.hourCounter += 1
                self.minCounter = 0
            } else { self.minCounter += 1
            }
            
            
            
//            if self.secCounter == 0 && self.minCounter == 0 {
//             print("どう？")
//               self.timer.invalidate()
//            self.isShowManga = true
//            } else if self.secCounter == 0 {
//
//                self.minCounter -= 1
//                self.secCounter = 59
//            } else {
//            print(self.secCounter)
//                self.secCounter -= 1
//            }
        }
        
    }
        func stop() {
        timer.invalidate()
            print("ストップ")
    }
}
    
//    func reset() {
//        minCounter = 0
//        secCounter = 0
//        timer.invalidate()
//    }

