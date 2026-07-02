// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "MultiStats",
    platforms: [.macOS(.v15)],
    targets: [
        .target(name: "MultiStatsCore"),
        .executableTarget(name: "MultiStats", dependencies: ["MultiStatsCore"]),
        .testTarget(name: "MultiStatsCoreTests", dependencies: ["MultiStatsCore"]),
    ]
)
