// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Geom",
    products: [
        .library(
            name: "GeomAPI",
            targets: ["GeomAPI"]),
        .library(
            name: "Geom",
            targets: ["Geom"]),
        .library(
            name: "GeomPolyUtils",
            targets: ["GeomPolyUtils"]),
    ],
    dependencies: [ ],
    targets: [
        .target(
            name: "GeomAPI",
            dependencies: []),
        .testTarget(
            name: "GeomAPITests",
            dependencies: ["GeomAPI"]),
        .target(
            name: "Geom",
            dependencies: ["GeomAPI", "GeomPolyUtils"]),
        .testTarget(
            name: "GeomTests",
            dependencies: ["GeomAPI", "Geom"]),
        .target(
            name: "GeomPolyUtils",
            dependencies: ["GeomAPI"]),
        .testTarget(
            name: "GeomPolyUtilsTests",
            dependencies: ["GeomAPI", "GeomPolyUtils"]),
    ]
)
