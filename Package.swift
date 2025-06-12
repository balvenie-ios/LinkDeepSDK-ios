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
        // Targets can depend on other targets in this package and products from dependencies.
//        .binaryTarget(
//            name: "LinkDeepSDK",
//            path: "Sources/LinkDeepSDK/LinkDeepSDK.xcframework"
//        ),
        .binaryTarget(
            name: "LinkDeepSDK",
            url: "https://github.com/balvenie-ios/LinkDeepSDK-ios/releases/download/1.0.1/LinkDeepSDK.xcframework.zip",
            checksum: "123"
        ),
        .testTarget(
            name: "LinkDeepSDKTests",
            dependencies: ["LinkDeepSDK"]
        ),
    ]
)
