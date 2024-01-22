// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StitchSchemaKit",
    platforms: [
        .macOS(.v14), .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "StitchSchemaKit",
            targets: ["Schemas"])
    ],
    targets: [
            // Targets are the basic building blocks of a package. A target can define a module or a test suite.
            // Targets can depend on other targets in this package, and on products in packages this package depends on.
            .target(
                name: "Schemas",
                dependencies: ["SwiftyJSON"],
                exclude: ["README.md"]
//                resources: [
//                    .process("text.txt"),
//                    .process("example.png"),
//                    .copy("settings.plist")
//                ]
            )
//            .binaryTarget(
//                name: "SomeRemoteBinaryPackage",
//                url: "https://url/to/some/remote/binary/package.zip",
//                checksum: "The checksum of the XCFramework inside the ZIP archive."
//            ),
//            .binaryTarget(
//                name: "SomeLocalBinaryPackage",
//                path: "path/to/some.xcframework"
//            )
//            .testTarget(
//                name: "MyLibraryTests",
//                dependencies: ["MyLibrary"]),
        ]
)
