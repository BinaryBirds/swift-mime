// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "mime",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .executable(
            name: "mime-cli",
            targets: ["mime-cli"]
        ),
        .library(
            name: "MIME",
            targets: ["MIME"]
        )
    ],
    targets: [
        .executableTarget(
            name: "mime-cli",
            dependencies: [
                .target(
                    name: "MIME"
                ),
            ]
        ),
        .target(
            name: "MIME",
            dependencies: []
        ),
        .testTarget(
            name: "MIMETests",
            dependencies: [
                .target(
                    name: "MIME"
                ),
            ]
        ),
    ]
)

