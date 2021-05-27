// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mytool",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "mytool",
            targets: ["mytool"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/realm/realm-cocoa.git", from: "10.7.6"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "mytool",
            dependencies: []),
        .testTarget(
            name: "mytoolTests",
            dependencies: ["mytool"]),
    ]
)
