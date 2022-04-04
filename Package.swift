// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "SSEncrypt",
                      platforms: [
                        .macOS(.v10_15),
                        .iOS(.v13),
                        .watchOS(.v6),
                        .tvOS(.v13),
                      ],
                      products: [
                        .library(name: "SSEncrypt", targets: ["SSEncrypt"]),
                      ],
                      dependencies: [
                        .package(url: "https://github.com/apple/swift-crypto.git", "1.0.0" ... "5.0.0"),
                      ],
                      targets: [
                        .target(name: "SSEncrypt", dependencies: [
                            .product(name: "Crypto", package: "swift-crypto")
                        ]),
                      ])
