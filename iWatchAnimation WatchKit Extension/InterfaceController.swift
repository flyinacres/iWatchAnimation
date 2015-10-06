//
//  InterfaceController.swift
//  iWatchAnimation WatchKit Extension
//
//  Created by Ronald Fischer on 10/5/15.
//  Copyright (c) 2015 qpiapps. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var animationStatus = 1
    @IBOutlet weak var animation: WKInterfaceImage!
    
    @IBAction func buttonHit() {
        if animationStatus == 1 {
            animation.stopAnimating()
            animationStatus = 0
        } else {
            animation.startAnimating()
            animationStatus = 1
        }
        
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
