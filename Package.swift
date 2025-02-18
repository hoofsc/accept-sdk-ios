// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AcceptSDK",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "AcceptSDK",
            targets: ["AcceptSDK"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AcceptSDK",
            dependencies: [],
            path: "Sources/AcceptSDK/",
            resources: [
                .process("Info.plist")
            ]
        ),
        .testTarget(
            name: "AcceptSDKTests",
            dependencies: ["AcceptSDK"],
            path: "Sources/AcceptSDKTests/",
            resources: [
                .process("Info.plist")
            ]
        )
    ]
)
