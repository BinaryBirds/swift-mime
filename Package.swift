// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "swift-mime",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .executable(name: "mime", targets: ["mime"]),
        .library(name: "mimeSDK",targets: ["mimeSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/behrang/YamlSwift.git", from: "3.4.4")
    ],
    targets: [
        .executableTarget(
            name: "mime",
            dependencies: ["mimeSDK"]
        ),
        .target(
            name: "mimeSDK",
            dependencies: [
                .product(name: "Yaml")
            ]
        ),
        .testTarget(
            name: "MIMETests",
            dependencies: ["mimeSDK"]
        ),
    ]
)
