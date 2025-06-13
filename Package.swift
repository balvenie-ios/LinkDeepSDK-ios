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
            url: "https://github.com/balvenie-ios/LinkDeepSDK-ios/releases/download/3.1.7/LinkDeepSDK.xcframework.zip",
            checksum: "80491ac31ca99d08eb90ac8a7369e3aa0301b85c74d139ee5315671597e8e458"
        )
    ]
)
