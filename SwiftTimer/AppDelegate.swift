//
//  AppDelegate.swift
//  SwiftTimer
//
//  Created by Daniel Pink on 1/09/2014.
//  Copyright (c) 2014 Electronic Innovations. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var startTimerButton: NSButton!
    @IBOutlet weak var statusLabel: NSTextField!
    @IBOutlet weak var inputField: NSTextField!


    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
        let timer1 = Timer(2.0) { self.statusLabel.stringValue = "Timer fired!" }
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }

    @IBAction func startTimer(sender: AnyObject) {
        let input = inputField.stringValue
        let timer2 = Timer(1.0) { self.statusLabel.stringValue = input }
    }

}

