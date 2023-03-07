//
//  main.swift
//  mime-cli
//
//  Created by Lengyel Gábor on 2023. 02. 28..
//

import Foundation
import MIME

let args = CommandLine.arguments
var ext = ""
if args.count >= 2 {
    ext = args[1]
}

guard !ext.isEmpty else {
    fatalError("Error: missing extension type")
}

let result = possibleMIMEType(for: ext)
guard let result else {
    fatalError("Error: no mime type found for '\(ext)' extension")
}
print(result)

