// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LinkDeepSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LinkDeepSDK",
            targets: ["LinkDeepSDK"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        .binaryTarget(
            name: "LinkDeepSDK",
            url: "https://github.com/balvenie-ios/LinkDeepSDK-ios/releases/download/3.1.3/LinkDeepSDK.xcframework.zip",
            checksum: ""
        )
    ]
)
