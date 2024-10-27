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
        .package(url: "https://github.com/Swinject/Swinject.git", exact: "2.9.1"),
        .package(url: "https://github.com/benjaminbruch/Rick-and-Morty-Swift-API.git", exact: "3.0.0"),
    ],
    targets: [
        // MARK: - Targets
        .target(
            name: "PresentationLayer",
            dependencies: [
                .byName(name: "DomainLayer"),
                .product(name: "Swinject", package: "Swinject")
            ]
        ),
        .target(
            name: "DomainLayer",
            dependencies: [
                .product(name: "Swinject", package: "Swinject")
            ]
        ),
        .target(
            name: "DataLayer",
            dependencies: [
                .byName(name: "DomainLayer"),
                .product(name: "Swinject", package: "Swinject"),
                .product(name: "RickMortySwiftApi", package: "Rick-and-Morty-Swift-API"),
            ]
        ),
        
        
        // MARK: - Testing
        .testTarget(
            name: "PresentationLayerTests",
            dependencies: ["PresentationLayer"]
        ),
        .testTarget(
            name: "DomainLayerTests",
            dependencies: ["DomainLayer"]
        ),
        .testTarget(
            name: "DataLayerTests",
            dependencies: ["DataLayer"]
        ),
    ]
)
