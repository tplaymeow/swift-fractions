// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Fractions",
  products: [
    .library(
      name: "Fractions",
      targets: ["Fractions"]),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "Fractions",
      dependencies: []),
    .testTarget(
      name: "FractionsTests",
      dependencies: ["Fractions"]),
  ]
)
