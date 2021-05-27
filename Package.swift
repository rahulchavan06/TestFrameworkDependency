//
//  Package.swift
//  MyTestLibrary
//
//  Created by Admin on 27/05/21.
//

// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "MyTestLibrary",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MyTestLibrary",
            targets: ["MyTestLibraryWrapper"])    // <--- reference the wrapper here
    ],
    dependencies: [
        .package(
            url: "https://github.com/realm/realm-cocoa.git",
            from: "10.7.6"
        )
    ],
    targets: [
        .target(
            name: "MyTestLibraryWrapper",         // <--- new wrapper
            dependencies: [
                .product(name: "TestApp", package: "TestApp")
                .target(name: "MyTestLibrary")    // <-- reference the actual binary target here
            ],
            path: "Sources/TestWrapper",
            publicHeadersPath: ""
        ),
        .binaryTarget(
            name: "MyTestLibrary",
            path: "MyTestLibrary.xcframework")
    ])
