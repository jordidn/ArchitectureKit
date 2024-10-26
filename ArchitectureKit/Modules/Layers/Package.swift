// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Layers",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "PresentationLayer",
            targets: ["PresentationLayer"]
        ),
        .library(
            name: "DomainLayer",
            targets: ["DomainLayer"]
        ),
        .library(
            name: "DataLayer",
            targets: ["DataLayer"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject.git", from: "2.9.1")
    ],
    targets: [
        // MARK: - Presentation
        .target(
            name: "PresentationLayer",
            dependencies: ["Swinject"]
        ),
        .testTarget(
            name: "PresentationLayerTests",
            dependencies: ["PresentationLayer"]
        ),
        
        // MARK: - Domain
        .target(
            name: "DomainLayer",
            dependencies: ["Swinject"]
        ),
        .testTarget(
            name: "DomainLayerTests",
            dependencies: ["DomainLayer"]
        ),
        
        // MARK: - Data
        .target(
            name: "DataLayer",
            dependencies: ["Swinject"]
        ),
        .testTarget(
            name: "DataLayerTests",
            dependencies: ["DataLayer"]
        ),
    ]
)
