//
//  File.swift
//  
//
//  Created by Lengyel Gábor on 2023. 02. 28..
//

import Foundation
import mime
import Yaml

let packageRootPath = URL(fileURLWithPath: #file)
                        .pathComponents
                        .prefix(while: { $0 != "Tests" })
                        .joined(separator: "/")
                        .dropFirst()

let assetsUrl = URL(fileURLWithPath: String(packageRootPath)).appendingPathComponent("Assets")
let testData = try Data(contentsOf: assetsUrl)

do {
    let testOutput = String(data: testData, encoding: .utf8)
    let value = try Yaml.load(testOutput ?? "")
}
catch {
  print(error)  // expected end, near "b: 2"
}
