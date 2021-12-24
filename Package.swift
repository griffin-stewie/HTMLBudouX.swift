// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HTMLBudouX.swift",
    products: [
        .library(
            name: "HTMLBudouX",
            targets: ["HTMLBudouX"]),
    ],
    dependencies: [
        .package(url: "https://github.com/griffin-stewie/BudouX.swift", .branch("main")),
        .package(url: "https://github.com/scinfu/SwiftSoup.git", from: "1.7.4"),
    ],
    targets: [
        .target(
            name: "HTMLBudouX",
            dependencies: [
                .product(name: "BudouX", package: "BudouX.swift"),
                .product(name: "SwiftSoup", package: "SwiftSoup"),
            ]),
        .testTarget(
            name: "HTMLBudouXTests",
            dependencies: ["HTMLBudouX"]),
    ]
)
