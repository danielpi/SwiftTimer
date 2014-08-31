//
//  Timer.swift
//  SwiftTimer
//
//  Created by Daniel Pink on 1/09/2014.
//  Copyright (c) 2014 Electronic Innovations. All rights reserved.
//

import Foundation

class Timer {
    var timer: NSTimer = NSTimer()
    var competionBlock: () -> ()
    
    init(_ timeInterval: Double, _ completionBlock: () -> ()) {
        competionBlock = completionBlock
        self.timer = NSTimer(timeInterval: timeInterval, target: self, selector: "execute", userInfo: nil, repeats: false)
        NSRunLoop.currentRunLoop().addTimer(timer, forMode: NSRunLoopCommonModes)
    }
    
    @objc func execute() {
        competionBlock()
    }
}
