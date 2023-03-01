//
//  File.swift
//  
//
//  Created by Lengyel Gábor on 2023. 02. 28..
//

import Foundation
import mimeSDK

let args = CommandLine.arguments
var ext = ""
if (args.count >= 2) {
    ext = args[1]
}

if (!ext.isEmpty) {
    let mimeArray = mimeType(for: ext)
    if (!mimeArray.isEmpty) {
        print(mimeArray)
        
    } else {
        print("No mime type found for '\(ext)'")
        
    }
    
} else {
    print("Missing extension type")
}
