// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AcceptSDK",
    url: "https://github.com/hoofsc/accept-sdk-ios",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "AcceptSDK",
            targets: ["AcceptSDK"]
        ),
        dependencies: [],
        targets: [
            .target(
                name: "AcceptSDK",
                path: "AcceptSDK",
                dependencies: [],
                resources: [
                    .process("Info.plist")
                ]
            ),
            .testTarget(
                name: "AcceptSDKTests",
                path: "AcceptSDKTests",
                dependencies: ["AcceptSDK"],
                resources: [
                    .process("Info.plist")
                ]
            )
        ]
    ]
)
