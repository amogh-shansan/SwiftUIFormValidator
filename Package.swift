// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SwiftUIFormValidator",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "SwiftUIFormValidator", targets: ["SwiftUIFormValidator"])
    ],
    targets: [
        .target(
            name: "SwiftUIFormValidator",
            path: "Sources",
            resources: [.process("SwiftUIFormValidator.docc")]
        )
    ]
)
