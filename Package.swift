// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftHTML",
    products: [
        .library(
            name: "SwiftHTML",
            targets: ["SwiftHTML"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "SwiftHTML",
            dependencies: ["DeveloperTools"]
        ),
        .target(name: "DeveloperTools")
    ]
)
