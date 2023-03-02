//
//  MIMETests.swift
//  MIMETests
//
//  Created by Tibor Bodecs on 2023. 02. 24..
//

import XCTest
@testable import mimeSDK

/*
 Test all common mime types from:
 https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Common_types
*/

final class MIMETests: XCTestCase {

    func testAI() throws {
        let mimeArray = mimeType(for: "ai")
        XCTAssertEqual(mimeArray.contains("application/postscript"), true)
    }
    
    func testAAC() throws {
        let mimeArray = mimeType(for: "aac")
        XCTAssertEqual(mimeArray.contains("audio/aac"), true)
    }
    
    func testABW() throws {
        let mimeArray = mimeType(for: "abw")
        XCTAssertEqual(mimeArray.contains("application/x-abiword"), true)
    }
    
    func testARC() throws {
        let mimeArray = mimeType(for: "arc")
        XCTAssertEqual(mimeArray.contains("application/x-freearc"), true)
    }
    
    func testAVIF() throws {
        let mimeArray = mimeType(for: "avif")
        XCTAssertEqual(mimeArray.contains("image/avif"), true)
    }
    
    func testAVI() throws {
        let mimeArray = mimeType(for: "avi")
        XCTAssertEqual(mimeArray.contains("video/x-msvideo"), true)
    }
    
    func testAZW() throws {
        let mimeArray = mimeType(for: "azw")
        XCTAssertEqual(mimeArray.contains("application/vnd.amazon.ebook"), true)
    }
    
    func testBIN() throws {
        let mimeArray = mimeType(for: "bin")
        XCTAssertEqual(mimeArray.contains("application/octet-stream"), true)
    }
    
    func testBMP() throws {
        let mimeArray = mimeType(for: "bmp")
        XCTAssertEqual(mimeArray.contains("image/bmp"), true)
    }
    
    func testBZ() throws {
        let mimeArray = mimeType(for: "bz")
        XCTAssertEqual(mimeArray.contains("application/x-bzip"), true)
    }
    
    func testBZ2() throws {
        let mimeArray = mimeType(for: "bz2")
        XCTAssertEqual(mimeArray.contains("application/x-bzip2"), true)
    }
    
    func testCDA() throws {
        let mimeArray = mimeType(for: "cda")
        XCTAssertEqual(mimeArray.contains("application/x-cdf"), true)
    }
    
    func testCSH() throws {
        let mimeArray = mimeType(for: "csh")
        XCTAssertEqual(mimeArray.contains("application/x-csh"), true)
    }
    
    func testCSS() throws {
        let mimeArray = mimeType(for: "css")
        XCTAssertEqual(mimeArray.contains("text/css"), true)
    }
    
    func testCSV() throws {
        let mimeArray = mimeType(for: "csv")
        XCTAssertEqual(mimeArray.contains("text/csv"), true)
    }
    
    func testDOC() throws {
        let mimeArray = mimeType(for: "doc")
        XCTAssertEqual(mimeArray.contains("application/msword"), true)
    }
    
    func testDOCX() throws {
        let mimeArray = mimeType(for: "docx")
        XCTAssertEqual(mimeArray.contains("application/vnd.openxmlformats-officedocument.wordprocessingml.document"), true)
    }
    
    func testEOT() throws {
        let mimeArray = mimeType(for: "eot")
        XCTAssertEqual(mimeArray.contains("application/vnd.ms-fontobject"), true)
    }
    
    func testEPUB() throws {
        let mimeArray = mimeType(for: "epub")
        XCTAssertEqual(mimeArray.contains("application/epub+zip"), true)
    }
    
    func testGZ() throws {
        let mimeArray = mimeType(for: "gz")
        XCTAssertEqual(mimeArray.contains("application/gzip"), true)
    }
    
    func testGIF() throws {
        let mimeArray = mimeType(for: "gif")
        XCTAssertEqual(mimeArray.contains("image/gif"), true)
    }
    
    func testHTM() throws {
        let mimeArray = mimeType(for: "htm")
        XCTAssertEqual(mimeArray.contains("text/html"), true)
    }
    
    func testHTML() throws {
        let mimeArray = mimeType(for: "html")
        XCTAssertEqual(mimeArray.contains("text/html"), true)
    }
    
    func testICO() throws {
        let mimeArray = mimeType(for: "ico")
        XCTAssertEqual(mimeArray.contains("image/vnd.microsoft.icon"), true)
    }
    
    func testICS() throws {
        let mimeArray = mimeType(for: "ics")
        XCTAssertEqual(mimeArray.contains("text/calendar"), true)
    }
    
    func testJAR() throws {
        let mimeArray = mimeType(for: "jar")
        XCTAssertEqual(mimeArray.contains("application/java-archive"), true)
    }
    
    func testJPG() throws {
        let mimeArray = mimeType(for: "jpg")
        XCTAssertEqual(mimeArray.contains("image/jpeg"), true)
    }
    
    func testJPEG() throws {
        let mimeArray = mimeType(for: "jpeg")
        XCTAssertEqual(mimeArray.contains("image/jpeg"), true)
    }
    
    func testJS() throws {
        let mimeArray = mimeType(for: "js")
        XCTAssertEqual(mimeArray.contains("text/javascript"), true)
    }
    
    func testJSON() throws {
        let mimeArray = mimeType(for: "json")
        XCTAssertEqual(mimeArray.contains("application/json"), true)
    }
    
    func testJSONLD() throws {
        let mimeArray = mimeType(for: "jsonld")
        XCTAssertEqual(mimeArray.contains("application/ld+json"), true)
    }
    
    func testMID() throws {
        let mimeArray = mimeType(for: "mid")
        XCTAssertEqual(mimeArray.contains("audio/midi"), true)
    }
    
    func testMIDI() throws {
        let mimeArray = mimeType(for: "midi")
        XCTAssertEqual(mimeArray.contains("audio/x-midi"), true)
    }
    
    func testMJS() throws {
        let mimeArray = mimeType(for: "mjs")
        XCTAssertEqual(mimeArray.contains("text/javascript"), true)
    }
    
    func testMP3() throws {
        let mimeArray = mimeType(for: "mp3")
        XCTAssertEqual(mimeArray.contains("audio/mpeg"), true)
    }
    
    func testMP4() throws {
        let mimeArray = mimeType(for: "mp4")
        XCTAssertEqual(mimeArray.contains("video/mp4"), true)
    }
    
    func testMPEG() throws {
        let mimeArray = mimeType(for: "mpeg")
        XCTAssertEqual(mimeArray.contains("video/mpeg"), true)
    }
    
    func testMPKG() throws {
        let mimeArray = mimeType(for: "mpkg")
        XCTAssertEqual(mimeArray.contains("application/vnd.apple.installer+xml"), true)
    }
    
    func testODP() throws {
        let mimeArray = mimeType(for: "odp")
        XCTAssertEqual(mimeArray.contains("application/vnd.oasis.opendocument.presentation"), true)
    }
    
    func testODS() throws {
        let mimeArray = mimeType(for: "ods")
        XCTAssertEqual(mimeArray.contains("application/vnd.oasis.opendocument.spreadsheet"), true)
    }
    
    func testODT() throws {
        let mimeArray = mimeType(for: "odt")
        XCTAssertEqual(mimeArray.contains("application/vnd.oasis.opendocument.text"), true)
    }
    
    func testOGA() throws {
        let mimeArray = mimeType(for: "oga")
        XCTAssertEqual(mimeArray.contains("audio/ogg"), true)
    }
    
    func testOGV() throws {
        let mimeArray = mimeType(for: "ogv")
        XCTAssertEqual(mimeArray.contains("video/ogg"), true)
    }
    
    func testOGX() throws {
        let mimeArray = mimeType(for: "ogx")
        XCTAssertEqual(mimeArray.contains("application/ogg"), true)
    }
    
    func testOPUS() throws {
        let mimeArray = mimeType(for: "opus")
        XCTAssertEqual(mimeArray.contains("audio/opus"), true)
    }
    
    func testOTF() throws {
        let mimeArray = mimeType(for: "otf")
        XCTAssertEqual(mimeArray.contains("font/otf"), true)
    }
    
    func testPNG() throws {
        let mimeArray = mimeType(for: "png")
        XCTAssertEqual(mimeArray.contains("image/png"), true)
    }
    
    func testPDF() throws {
        let mimeArray = mimeType(for: "pdf")
        XCTAssertEqual(mimeArray.contains("application/pdf"), true)
    }
    
    func testPHP() throws {
        let mimeArray = mimeType(for: "php")
        XCTAssertEqual(mimeArray.contains("application/x-httpd-php"), true)
    }
    
    func testPPT() throws {
        let mimeArray = mimeType(for: "ppt")
        XCTAssertEqual(mimeArray.contains("application/vnd.ms-powerpoint"), true)
    }
    
    func testPPTX() throws {
        let mimeArray = mimeType(for: "pptx")
        XCTAssertEqual(mimeArray.contains("application/vnd.openxmlformats-officedocument.presentationml.presentation"), true)
    }
    
    func testRAR() throws {
        let mimeArray = mimeType(for: "rar")
        XCTAssertEqual(mimeArray.contains("application/vnd.rar"), true)
    }
    
    func testRTF() throws {
        let mimeArray = mimeType(for: "rtf")
        XCTAssertEqual(mimeArray.contains("application/rtf"), true)
    }
    
    func testSH() throws {
        let mimeArray = mimeType(for: "sh")
        XCTAssertEqual(mimeArray.contains("application/x-sh"), true)
    }
    
    func testSVG() throws {
        let mimeArray = mimeType(for: "svg")
        XCTAssertEqual(mimeArray.contains("image/svg+xml"), true)
    }
    
    func testTAR() throws {
        let mimeArray = mimeType(for: "tar")
        XCTAssertEqual(mimeArray.contains("application/x-tar"), true)
    }
    
    func testTIF() throws {
        let mimeArray = mimeType(for: "tif")
        XCTAssertEqual(mimeArray.contains("image/tiff"), true)
    }
    
    func testTIFF() throws {
        let mimeArray = mimeType(for: "tiff")
        XCTAssertEqual(mimeArray.contains("image/tiff"), true)
    }
    
    func testTS() throws {
        let mimeArray = mimeType(for: "ts")
        XCTAssertEqual(mimeArray.contains("video/mp2t"), true)
    }
    
    func testTTF() throws {
        let mimeArray = mimeType(for: "ttf")
        XCTAssertEqual(mimeArray.contains("font/ttf"), true)
    }
    
    func testTXT() throws {
        let mimeArray = mimeType(for: "txt")
        XCTAssertEqual(mimeArray.contains("text/plain"), true)
    }
    
    func testVSD() throws {
        let mimeArray = mimeType(for: "vsd")
        XCTAssertEqual(mimeArray.contains("application/vnd.visio"), true)
    }
    
    func testWAV() throws {
        let mimeArray = mimeType(for: "wav")
        XCTAssertEqual(mimeArray.contains("audio/wav"), true)
    }
    
    func testWEBA() throws {
        let mimeArray = mimeType(for: "weba")
        XCTAssertEqual(mimeArray.contains("audio/webm"), true)
    }
    
    func testWEBM() throws {
        let mimeArray = mimeType(for: "webm")
        XCTAssertEqual(mimeArray.contains("video/webm"), true)
    }
    
    func testWEBP() throws {
        let mimeArray = mimeType(for: "webp")
        XCTAssertEqual(mimeArray.contains("image/webp"), true)
    }
    
    func testWOFF() throws {
        let mimeArray = mimeType(for: "woff")
        XCTAssertEqual(mimeArray.contains("font/woff"), true)
    }
    
    func testWOFF2() throws {
        let mimeArray = mimeType(for: "woff2")
        XCTAssertEqual(mimeArray.contains("font/woff2"), true)
    }
    
    func testXHTML() throws {
        let mimeArray = mimeType(for: "xhtml")
        XCTAssertEqual(mimeArray.contains("application/xhtml+xml"), true)
    }
    
    func testXLS() throws {
        let mimeArray = mimeType(for: "xls")
        XCTAssertEqual(mimeArray.contains("application/vnd.ms-excel"), true)
    }
    
    func testXLSX() throws {
        let mimeArray = mimeType(for: "xlsx")
        XCTAssertEqual(mimeArray.contains("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"), true)
    }
    
    func testXML() throws {
        let mimeArray = mimeType(for: "xml")
        XCTAssertEqual(mimeArray.contains("application/xml"), true)
    }
    
    func testXUL() throws {
        let mimeArray = mimeType(for: "xul")
        XCTAssertEqual(mimeArray.contains("application/vnd.mozilla.xul+xml"), true)
    }
    
    func testZIP() throws {
        let mimeArray = mimeType(for: "zip")
        XCTAssertEqual(mimeArray.contains("application/zip"), true)
    }
    
    func test3GP() throws {
        let mimeArray = mimeType(for: "3gp")
        XCTAssertEqual(mimeArray.contains("video/3gpp"), true)
    }
    
    func test3G2() throws {
        let mimeArray = mimeType(for: "3g2")
        XCTAssertEqual(mimeArray.contains("audio/3gpp2"), true)
    }
    
    func test7Z() throws {
        let mimeArray = mimeType(for: "7z")
        XCTAssertEqual(mimeArray.contains("application/x-7z-compressed"), true)
    }
    
}
