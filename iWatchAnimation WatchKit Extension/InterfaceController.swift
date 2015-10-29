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

    let drawDice = DrawDice()
    
    var animationStatus = 1
    @IBOutlet weak var animation: WKInterfaceImage!
    
    @IBAction func buttonHit() {
        // Test setting the image programmatically--seems to work
        var readImage = drawDice.createDieImages("d4die", sides: 4, color: UIColor.blueColor(), width: 100, height: 100, radius: 50)
        //WKInterfaceDevice().addCachedImage(readImage!, name: "d4die\(1)")

        //animation.setImageNamed("d4die1.png")

        //animation.setImage(readImage)
        
//        let animatedImage = UIImage.animatedImageNamed("d4die1",
//            duration: 20)
//        
//        animation.setImage(animatedImage)
        
        let animatedImage = UIImage.animatedImageWithImages(readImage, duration: 1)
        animation.setImage(animatedImage)
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
