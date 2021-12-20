// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OTUS_Packages",
    platforms: [ .macOS(.v10_10),
                 .iOS(.v14),
                 .tvOS(.v9),
                 .watchOS(.v2) ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "OTUS_Packages",
            targets: ["SearchUI", "DI", "BooksApi", "MoviesApi", "CustomNavigation"]),
        .library(
            name: "SearchUI",
            targets: ["SearchUI"]),
        .library(
            name: "DI",
            targets: ["DI"]),
        .library(
            name: "BooksApi",
            targets: ["BooksApi"]),
        .library(
            name: "MoviesApi",
            targets: ["MoviesApi"]),
        .library(
            name: "CustomNavigation",
            targets: ["CustomNavigation"]),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SearchUI",
            dependencies: ["CustomNavigation"],
            path: "SearchUI",
            resources: [.process("README.md")]),
        .target(
            name: "DI",
            dependencies: [],
            path: "DI",
            resources: [.process("README.md")]),
        .target(
            name: "BooksApi",
            dependencies: [],
            path: "BooksApi",
            resources: [
                .process("README.md"),
                .process("booksApi.yaml"),
                .process("generate.sh")]),
        .target(
            name: "MoviesApi",
            dependencies: [],
            path: "MoviesApi",
            resources: [
                .process("README.md"),
                .process("moviesApi.yaml"),
                .process("moviesApi.json"),
                .process("generate.sh")]),
        .target(
            name: "CustomNavigation",
            dependencies: [],
            path: "CustomNavigation",
            resources: [.process("README.md")]),
    ]
)