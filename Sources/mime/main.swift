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
    let mimeResults = mimeType(for: ext)
    if (!mimeResults.isEmpty) {
        print(mimeResults)
    } else {
        print("Error: no mime type found for '\(ext)' extension")
    }
} else {
    print("Error: missing extension type")
}
