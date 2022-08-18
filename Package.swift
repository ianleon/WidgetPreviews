// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WidgetPreviews",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WidgetPreviews",
            targets: ["WidgetPreviews"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "git@github.com:ianleon/Muscovado.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "WidgetPreviews",
            dependencies: [
                .product(name: "Muscovado", package: "Muscovado")
            ]),
        .testTarget(
            name: "WidgetPreviewsTests",
            dependencies: ["WidgetPreviews"]),
    ]
)
