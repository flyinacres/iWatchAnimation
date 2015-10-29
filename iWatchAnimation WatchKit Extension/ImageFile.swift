//
//  ImageFile.swift
//  iWatchAnimation
//
//  Created by Ronald Fischer on 10/28/15.
//  Copyright (c) 2015 qpiapps. All rights reserved.
//

import Foundation

class ImageFile {
    var fileDir = ""
    
    init() {
        let dirs : [String] = (NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as? [String])!
        fileDir = dirs[0] //documents directory
    }
    
    func writeImage(data: NSData, dieName: String, fileNumber: Int) {
        var b = data.writeToFile(imageFilePath(dieName, fileNumber: fileNumber), atomically: true)
        if b == false {
            println("ERROR: Failed to write file \(dieName)\(fileNumber)")
        }
    }
    
    func imageFilePath(dieName: String, fileNumber: Int) -> String {
        let fileName = "\(dieName)\(fileNumber).png"
        return fileDir.stringByAppendingPathComponent(fileName)
    }
    
    
}