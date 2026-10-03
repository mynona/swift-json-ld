// swift-tools-version:6.3
import PackageDescription

let package = Package(
    name: "swift-json-ld",
    platforms: [
        .macOS(.v15)
    ],
    products: [
        .library(
            name: "LDJson",
            targets: ["LDJson"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "LDJson",
            dependencies: [
            ],
            path: "Sources/LDJson",
            swiftSettings: swiftSettings
        ),
        .executableTarget(
            name: "Generator",
            dependencies: [
            ],
            path: "Sources/Generator"
        ),
        .testTarget(
            name: "LDJsonTests",
            dependencies: [
                "LDJson"
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


