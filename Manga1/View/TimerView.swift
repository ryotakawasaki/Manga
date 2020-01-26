//
//  TimerView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/26.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

struct TimerView: View {
    
    @EnvironmentObject var stopwotch: Stopwatch
    @EnvironmentObject var intimer: InTimer
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
