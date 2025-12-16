// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SwinjectAutoregistration",
    products: [
        .library(
            name: "SwinjectAutoregistration",
            targets: ["SwinjectAutoregistration"]),
        .library(
            name: "SwinjectAutoregistration-Dynamic",
            type: .dynamic,
            targets: ["SwinjectAutoregistration"])

    ],
    dependencies: [
        .package(url: "https://github.com/Snailed-It/Swinject.git", .upToNextMajor(from: "2.10.1"))
    ],
    targets: [
        .target(
            name: "SwinjectAutoregistration",
            dependencies: [
                "Swinject",
            ],
            path: "Sources"),
    ]
)
