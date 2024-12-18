//
//  Package.swift
//  DemoFramework
//
//  Created by Sanketh S D on 18/12/24.
//

// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "DemoFramework",
    platforms: [
        .iOS(.v11),  // Specify the minimum iOS version
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "DemoFramework",
            targets: ["DemoFramework"]
        )
    ],
    dependencies: [
        // Add external dependencies here, e.g.,
        // .package(url: "https://github.com/apple/swift-crypto", from: "1.1.6"),
    ],
    targets: [
        .target(
            name: "DemoFramework",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "DemoFrameworkTests",
            dependencies: ["DemoFramework"],
            path: "Tests"
        )
    ]
)
