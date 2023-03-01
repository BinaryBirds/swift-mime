// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "mime",
    platforms: [.macOS(.v10_15),],
    products: [
        .executable(name: "mime", targets: ["mime"]),
        .library(name: "mimeSDK", targets: ["mimeSDK"])
    ],
    targets: [
        .executableTarget(name: "mime", dependencies: [.target(name: "mimeSDK")]),
        .target(name: "mimeSDK", dependencies: []),
        .testTarget(name: "mimeTests", dependencies: [.target(name: "mimeSDK")]),
    ]
)

