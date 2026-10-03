// swift-tools-version:6.3
import PackageDescription

let package = Package(
    name: "swift-json-ld",
    platforms: [
        .macOS(.v15)
    ],
    products: [
        .library(
            name: "JsonLD",
            targets: ["JsonLD"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "JsonLD",
            dependencies: [
            ],
            path: "Sources/JsonLD",
            swiftSettings: swiftSettings
        ),
        .executableTarget(
            name: "Generator",
            dependencies: [
            ],
            path: "Sources/Generator"
        ),
        .testTarget(
            name: "JsonLDTests",
            dependencies: [
                "JsonLD"
            ]
        ),
    ]
)

var swiftSettings: [SwiftSetting] {
    [
        .unsafeFlags(
            ["-cross-module-optimization"],
            .when(configuration: .release)
        )
    ]
}


