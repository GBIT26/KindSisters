// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "KindSisters",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "KindSisters",
            targets: ["KindSisters"]),
    ],
    targets: [
        .target(
            name: "KindSisters",
            dependencies: [],
            path: "."
        )
    ]
)
