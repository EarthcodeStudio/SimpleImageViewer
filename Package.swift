// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SimpleImageViewer",
    platforms: [
          .iOS(.v12),
    ],
    products: [
        .library(
            name: "SimpleImageViewer",
            targets: ["SimpleImageViewer"]),
    ],
    targets: [
        .target(name: "SimpleImageViewer"),
	path: "ImageViewer"
    ],
    swiftLanguageVersions: [.v5]
)
