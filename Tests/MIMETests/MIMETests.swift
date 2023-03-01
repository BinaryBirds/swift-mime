//
//  MIMETests.swift
//  MIMETests
//
//  Created by Tibor Bodecs on 2023. 02. 24..
//

import XCTest
@testable import mimeSDK

final class MIMETests: XCTestCase {

    func testExample() throws {
        let mime = mimeType(for: "ai") // -> application/postscript
        XCTAssertEqual("application/postscript", mime)
    }
}
