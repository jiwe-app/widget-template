// swift-tools-version:5.7.1
import PackageDescription

let package = Package(
    name: "WIDGET_NAME",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(name: "WIDGET_NAME", type: .dynamic, targets: ["WIDGET_NAME"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jiwe-app/jiwe-interface.git", branch: "main"),
    ],
    targets: [
        .target(name: "WIDGET_NAME", dependencies: [
            .product(name: "JiweInterface", package: "jiwe-interface")
        ], path: "Sources/widget"),
    ]
)
