// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "RxKingfisher",
    platforms: [
        .iOS(.v8), .tvOS(.v9), .macOS(.v10_11), .watchOS(.v3)
    ],
    products: [
        .library(name: "RxKingfisher", targets: ["RxKingfisher"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "5.13.4")),
    ],
    targets: [
        .target(name: "RxKingfisher", dependencies: ["RxSwift", "RxCocoa", "Kingfisher"], path: "Sources"),
        .testTarget(name: "RxKingfisherTests", dependencies: ["RxKingfisher", "RxTest"], path: "Tests"),
    ],
    swiftLanguageVersions: [.v5]
)
