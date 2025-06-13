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
            url: "https://github.com/balvenie-ios/LinkDeepSDK-ios/releases/download/2.0.4/LinkDeepSDK.xcframework.zip",
            checksum: "fdbe1d7540d19b540330ee8c071ae8014df41a0e24a89db7db62b7f2b5b650f9"
        )
    ]
)
