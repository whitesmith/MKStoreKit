// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "WSStoreKit",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "WSStoreKit",
            targets: ["WSStoreKit"]
        )
    ],
    targets: [
        .target(
            name: "WSStoreKit",
            path: ".",
            sources: ["Source"]
        )
    ]
)
