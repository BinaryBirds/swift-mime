// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "swift-mime",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "MIME",
            targets: ["MIME"]
        ),
    ],
    dependencies: [
        // none
    ],
    targets: [
        .target(
            name: "MIME",
            dependencies: []
        ),
        .testTarget(
            name: "MIMETests",
            dependencies: ["MIME"]
        ),
    ]
)
