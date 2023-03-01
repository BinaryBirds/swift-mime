// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "swift-mime",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        
    ],
    dependencies: [
        .package(url: "https://github.com/behrang/YamlSwift.git", from: "3.4.4")
    ],
    targets: [
        .target(name: "mime", dependencies: [
            .product(name: "Yaml", package: "YamlSwift"),
        ]),
        .executableTarget(name: "Run", dependencies: ["mime"]),
        .testTarget(name: "mimeTests", dependencies: [
            .target(name: "mime"),
        ])
    ]
)
