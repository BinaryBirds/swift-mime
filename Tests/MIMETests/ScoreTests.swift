//
//  MIMETests.swift
//  MIMETests
//
//  Created by Tibor Bodecs on 2023. 02. 24..
//

import XCTest
@testable import MIME

final class ScoreTests: XCTestCase {
    
    func testMiscScores() throws {
        XCTAssertEqual(getMIMEScore(for: "image/bmp", source: .iana), 940.91)
        XCTAssertEqual(getMIMEScore(for: "application/x-foo"), 231.83)
        XCTAssertEqual(getMIMEScore(for: "font/x.foo", source: .apache), 322.9)
        XCTAssertEqual(getMIMEScore(for: "text/vnd.foo", source: .nginx), 410.88)
        XCTAssertEqual(getMIMEScore(for: "text/prs.foo", source: .nginx), 110.88)   
    }

    func testFacetPriority() throws {
        XCTAssertGreaterThan(
            getMIMEScore(for: "image/bmp"),
            getMIMEScore(for: "image/x-ms-bmp")
        )
    }
    
    func testSourcePriority() throws {
        XCTAssertEqual(getMIMEScore(for: "image/bmp", source: .iana), 940.91)
        XCTAssertEqual(getMIMEScore(for: "image/bmp"), 930.91)
        XCTAssertEqual(getMIMEScore(for: "image/bmp", source: .apache), 920.91)
        XCTAssertEqual(getMIMEScore(for: "image/bmp", source: .nginx), 910.91)
    }
    
    func testGeneralTypePriority() throws {
        XCTAssertEqual(getMIMEScore(for: "application/xml"), 931.85)
        XCTAssertEqual(getMIMEScore(for: "text/xml"), 930.92)
    }
    
    func testLengthPriority() throws {
        XCTAssertEqual(getMIMEScore(for: "text/wat"), 930.92)
        XCTAssertEqual(getMIMEScore(for: "text/water"), 930.9)
    }
}
