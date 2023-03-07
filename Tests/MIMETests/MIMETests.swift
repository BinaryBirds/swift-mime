//
//  MIMETests.swift
//  MIMETests
//
//  Created by Tibor Bodecs on 2023. 02. 24..
//

import XCTest
@testable import MIME

final class MIMETests: XCTestCase {
    
    func testBasicTypes() throws {
        XCTAssertEqual("text/html", possibleMIMEType(for: "html"))
        XCTAssertEqual("application/json", possibleMIMEType(for: "json"))
    }

    // MARK: - test all types
    
    func testAI() throws {
        let mimeArray = allKnownMIMETypes(for: "ai")
        XCTAssertTrue(mimeArray.contains("application/postscript"))
    }
    
    func testAAC() throws {
        let mimeArray = allKnownMIMETypes(for: "aac")
        XCTAssertTrue(mimeArray.contains("audio/aac"))
    }
    
    func testABW() throws {
        let mimeArray = allKnownMIMETypes(for: "abw")
        XCTAssertTrue(mimeArray.contains("application/x-abiword"))
    }
    
    func testARC() throws {
        let mimeArray = allKnownMIMETypes(for: "arc")
        XCTAssertTrue(mimeArray.contains("application/x-freearc"))
    }
    
    func testAVIF() throws {
        let mimeArray = allKnownMIMETypes(for: "avif")
        XCTAssertTrue(mimeArray.contains("image/avif"))
    }
    
    func testAVI() throws {
        let mimeArray = allKnownMIMETypes(for: "avi")
        XCTAssertTrue(mimeArray.contains("video/x-msvideo"))
    }
    
    func testAZW() throws {
        let mimeArray = allKnownMIMETypes(for: "azw")
        XCTAssertTrue(mimeArray.contains("application/vnd.amazon.ebook"))
    }
    
    func testBIN() throws {
        let mimeArray = allKnownMIMETypes(for: "bin")
        XCTAssertTrue(mimeArray.contains("application/octet-stream"))
    }
    
    func testBMP() throws {
        let mimeArray = allKnownMIMETypes(for: "bmp")
        XCTAssertTrue(mimeArray.contains("image/bmp"))
    }
    
    func testBZ() throws {
        let mimeArray = allKnownMIMETypes(for: "bz")
        XCTAssertTrue(mimeArray.contains("application/x-bzip"))
    }
    
    func testBZ2() throws {
        let mimeArray = allKnownMIMETypes(for: "bz2")
        XCTAssertTrue(mimeArray.contains("application/x-bzip2"))
    }
    
    func testCDA() throws {
        let mimeArray = allKnownMIMETypes(for: "cda")
        XCTAssertTrue(mimeArray.contains("application/x-cdf"))
    }
    
    func testCSH() throws {
        let mimeArray = allKnownMIMETypes(for: "csh")
        XCTAssertTrue(mimeArray.contains("application/x-csh"))
    }
    
    func testCSS() throws {
        let mimeArray = allKnownMIMETypes(for: "css")
        XCTAssertTrue(mimeArray.contains("text/css"))
    }
    
    func testCSV() throws {
        let mimeArray = allKnownMIMETypes(for: "csv")
        XCTAssertTrue(mimeArray.contains("text/csv"))
    }
    
    func testDOC() throws {
        let mimeArray = allKnownMIMETypes(for: "doc")
        XCTAssertTrue(mimeArray.contains("application/msword"))
    }
    
    func testDOCX() throws {
        let mimeArray = allKnownMIMETypes(for: "docx")
        XCTAssertTrue(mimeArray.contains("application/vnd.openxmlformats-officedocument.wordprocessingml.document"))
    }
    
    func testEOT() throws {
        let mimeArray = allKnownMIMETypes(for: "eot")
        XCTAssertTrue(mimeArray.contains("application/vnd.ms-fontobject"))
    }
    
    func testEPUB() throws {
        let mimeArray = allKnownMIMETypes(for: "epub")
        XCTAssertTrue(mimeArray.contains("application/epub+zip"))
    }
    
    func testGZ() throws {
        let mimeArray = allKnownMIMETypes(for: "gz")
        XCTAssertTrue(mimeArray.contains("application/gzip"))
    }
    
    func testGIF() throws {
        let mimeArray = allKnownMIMETypes(for: "gif")
        XCTAssertTrue(mimeArray.contains("image/gif"))
    }
    
    func testHTM() throws {
        let mimeArray = allKnownMIMETypes(for: "htm")
        XCTAssertTrue(mimeArray.contains("text/html"))
    }
    
    func testHTML() throws {
        let mimeArray = allKnownMIMETypes(for: "html")
        print(mimeArray)
        XCTAssertTrue(mimeArray.contains("text/html"))
    }
    
    func testICO() throws {
        let mimeArray = allKnownMIMETypes(for: "ico")
        XCTAssertTrue(mimeArray.contains("image/vnd.microsoft.icon"))
    }
    
    func testICS() throws {
        let mimeArray = allKnownMIMETypes(for: "ics")
        XCTAssertTrue(mimeArray.contains("text/calendar"))
    }
    
    func testJAR() throws {
        let mimeArray = allKnownMIMETypes(for: "jar")
        XCTAssertTrue(mimeArray.contains("application/java-archive"))
    }
    
    func testJPG() throws {
        let mimeArray = allKnownMIMETypes(for: "jpg")
        XCTAssertTrue(mimeArray.contains("image/jpeg"))
    }
    
    func testJPEG() throws {
        let mimeArray = allKnownMIMETypes(for: "jpeg")
        XCTAssertTrue(mimeArray.contains("image/jpeg"))
    }
    
    func testJS() throws {
        let mimeArray = allKnownMIMETypes(for: "js")
        XCTAssertTrue(mimeArray.contains("text/javascript"))
    }
    
    func testJSON() throws {
        let mimeArray = allKnownMIMETypes(for: "json")
        XCTAssertTrue(mimeArray.contains("application/json"))
    }
    
    func testJSONLD() throws {
        let mimeArray = allKnownMIMETypes(for: "jsonld")
        XCTAssertTrue(mimeArray.contains("application/ld+json"))
    }
    
    func testMID() throws {
        let mimeArray = allKnownMIMETypes(for: "mid")
        XCTAssertTrue(mimeArray.contains("audio/midi"))
    }
    
    func testMIDI() throws {
        let mimeArray = allKnownMIMETypes(for: "midi")
        XCTAssertTrue(mimeArray.contains("audio/x-midi"))
    }
    
    func testMJS() throws {
        let mimeArray = allKnownMIMETypes(for: "mjs")
        XCTAssertTrue(mimeArray.contains("text/javascript"))
    }
    
    func testMP3() throws {
        let mimeArray = allKnownMIMETypes(for: "mp3")
        XCTAssertTrue(mimeArray.contains("audio/mpeg"))
    }
    
    func testMP4() throws {
        let mimeArray = allKnownMIMETypes(for: "mp4")
        XCTAssertTrue(mimeArray.contains("video/mp4"))
    }
    
    func testMPEG() throws {
        let mimeArray = allKnownMIMETypes(for: "mpeg")
        XCTAssertTrue(mimeArray.contains("video/mpeg"))
    }
    
    func testMPKG() throws {
        let mimeArray = allKnownMIMETypes(for: "mpkg")
        XCTAssertTrue(mimeArray.contains("application/vnd.apple.installer+xml"))
    }
    
    func testODP() throws {
        let mimeArray = allKnownMIMETypes(for: "odp")
        XCTAssertTrue(mimeArray.contains("application/vnd.oasis.opendocument.presentation"))
    }
    
    func testODS() throws {
        let mimeArray = allKnownMIMETypes(for: "ods")
        XCTAssertTrue(mimeArray.contains("application/vnd.oasis.opendocument.spreadsheet"))
    }
    
    func testODT() throws {
        let mimeArray = allKnownMIMETypes(for: "odt")
        XCTAssertTrue(mimeArray.contains("application/vnd.oasis.opendocument.text"))
    }
    
    func testOGA() throws {
        let mimeArray = allKnownMIMETypes(for: "oga")
        XCTAssertTrue(mimeArray.contains("audio/ogg"))
    }
    
    func testOGV() throws {
        let mimeArray = allKnownMIMETypes(for: "ogv")
        XCTAssertTrue(mimeArray.contains("video/ogg"))
    }
    
    func testOGX() throws {
        let mimeArray = allKnownMIMETypes(for: "ogx")
        XCTAssertTrue(mimeArray.contains("application/ogg"))
    }
    
    func testOPUS() throws {
        let mimeArray = allKnownMIMETypes(for: "opus")
        XCTAssertTrue(mimeArray.contains("audio/opus"))
    }
    
    func testOTF() throws {
        let mimeArray = allKnownMIMETypes(for: "otf")
        XCTAssertTrue(mimeArray.contains("font/otf"))
    }
    
    func testPNG() throws {
        let mimeArray = allKnownMIMETypes(for: "png")
        XCTAssertTrue(mimeArray.contains("image/png"))
    }
    
    func testPDF() throws {
        let mimeArray = allKnownMIMETypes(for: "pdf")
        XCTAssertTrue(mimeArray.contains("application/pdf"))
    }
    
    func testPHP() throws {
        let mimeArray = allKnownMIMETypes(for: "php")
        XCTAssertTrue(mimeArray.contains("application/x-httpd-php"))
    }
    
    func testPPT() throws {
        let mimeArray = allKnownMIMETypes(for: "ppt")
        XCTAssertTrue(mimeArray.contains("application/vnd.ms-powerpoint"))
    }
    
    func testPPTX() throws {
        let mimeArray = allKnownMIMETypes(for: "pptx")
        XCTAssertTrue(mimeArray.contains("application/vnd.openxmlformats-officedocument.presentationml.presentation"))
    }
    
    func testRAR() throws {
        let mimeArray = allKnownMIMETypes(for: "rar")
        XCTAssertTrue(mimeArray.contains("application/vnd.rar"))
    }
    
    func testRTF() throws {
        let mimeArray = allKnownMIMETypes(for: "rtf")
        XCTAssertTrue(mimeArray.contains("application/rtf"))
    }
    
    func testSH() throws {
        let mimeArray = allKnownMIMETypes(for: "sh")
        XCTAssertTrue(mimeArray.contains("application/x-sh"))
    }
    
    func testSVG() throws {
        let mimeArray = allKnownMIMETypes(for: "svg")
        XCTAssertTrue(mimeArray.contains("image/svg+xml"))
    }
    
    func testTAR() throws {
        let mimeArray = allKnownMIMETypes(for: "tar")
        XCTAssertTrue(mimeArray.contains("application/x-tar"))
    }
    
    func testTIF() throws {
        let mimeArray = allKnownMIMETypes(for: "tif")
        XCTAssertTrue(mimeArray.contains("image/tiff"))
    }
    
    func testTIFF() throws {
        let mimeArray = allKnownMIMETypes(for: "tiff")
        XCTAssertTrue(mimeArray.contains("image/tiff"))
    }
    
    func testTS() throws {
        let mimeArray = allKnownMIMETypes(for: "ts")
        XCTAssertTrue(mimeArray.contains("video/mp2t"))
    }
    
    func testTTF() throws {
        let mimeArray = allKnownMIMETypes(for: "ttf")
        XCTAssertTrue(mimeArray.contains("font/ttf"))
    }
    
    func testTXT() throws {
        let mimeArray = allKnownMIMETypes(for: "txt")
        XCTAssertTrue(mimeArray.contains("text/plain"))
    }
    
    func testVSD() throws {
        let mimeArray = allKnownMIMETypes(for: "vsd")
        XCTAssertTrue(mimeArray.contains("application/vnd.visio"))
    }
    
    func testWAV() throws {
        let mimeArray = allKnownMIMETypes(for: "wav")
        XCTAssertTrue(mimeArray.contains("audio/wav"))
    }
    
    func testWEBA() throws {
        let mimeArray = allKnownMIMETypes(for: "weba")
        XCTAssertTrue(mimeArray.contains("audio/webm"))
    }
    
    func testWEBM() throws {
        let mimeArray = allKnownMIMETypes(for: "webm")
        XCTAssertTrue(mimeArray.contains("video/webm"))
    }
    
    func testWEBP() throws {
        let mimeArray = allKnownMIMETypes(for: "webp")
        XCTAssertTrue(mimeArray.contains("image/webp"))
    }
    
    func testWOFF() throws {
        let mimeArray = allKnownMIMETypes(for: "woff")
        XCTAssertTrue(mimeArray.contains("font/woff"))
    }
    
    func testWOFF2() throws {
        let mimeArray = allKnownMIMETypes(for: "woff2")
        XCTAssertTrue(mimeArray.contains("font/woff2"))
    }
    
    func testXHTML() throws {
        let mimeArray = allKnownMIMETypes(for: "xhtml")
        XCTAssertTrue(mimeArray.contains("application/xhtml+xml"))
    }
    
    func testXLS() throws {
        let mimeArray = allKnownMIMETypes(for: "xls")
        XCTAssertTrue(mimeArray.contains("application/vnd.ms-excel"))
    }
    
    func testXLSX() throws {
        let mimeArray = allKnownMIMETypes(for: "xlsx")
        XCTAssertTrue(mimeArray.contains("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"))
    }
    
    func testXML() throws {
        let mimeArray = allKnownMIMETypes(for: "xml")
        XCTAssertTrue(mimeArray.contains("application/xml"))
    }
    
    func testXUL() throws {
        let mimeArray = allKnownMIMETypes(for: "xul")
        XCTAssertTrue(mimeArray.contains("application/vnd.mozilla.xul+xml"))
    }
    
    func testZIP() throws {
        let mimeArray = allKnownMIMETypes(for: "zip")
        XCTAssertTrue(mimeArray.contains("application/zip"))
    }
    
    func test3GP() throws {
        let mimeArray = allKnownMIMETypes(for: "3gp")
        XCTAssertTrue(mimeArray.contains("video/3gpp"))
    }
    
    func test3G2() throws {
        let mimeArray = allKnownMIMETypes(for: "3g2")
        XCTAssertTrue(mimeArray.contains("audio/3gpp2"))
    }
    
    func test7Z() throws {
        let mimeArray = allKnownMIMETypes(for: "7z")
        XCTAssertTrue(mimeArray.contains("application/x-7z-compressed"))
    }
}
