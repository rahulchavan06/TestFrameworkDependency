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
        .target(
            name: "mytool",
            dependencies: ["realm-cocoa"],
            path: "Sources"
	),
        .testTarget(
            name: "mytoolTests",
            dependencies: ["mytool"]
	)
    ]
)
