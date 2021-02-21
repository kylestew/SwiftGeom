// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Geom",
    products: [
        .library(
            name: "GeomAPI",
            type: .dynamic,
            targets: ["GeomAPI"]),
        .library(
            name: "Geom",
            type: .dynamic,
            targets: ["Geom"]),
        .library(
            name: "GeomPolyUtils",
            type: .dynamic, 
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
            name: "GeomPolyUtils",
            dependencies: ["GeomAPI"]),
        .testTarget(
            name: "GeomPolyUtilsTests",
            dependencies: ["GeomAPI", "GeomPolyUtils"]),
        .target(
            name: "Geom",
            dependencies: ["GeomAPI", "GeomPolyUtils"]),
        .testTarget(
            name: "GeomTests",
            dependencies: ["GeomAPI", "Geom"]),
    ]
)
