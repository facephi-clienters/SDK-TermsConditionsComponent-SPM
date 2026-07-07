// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "SDK-DisclaimerComponent-SPM",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "SDK-DisclaimerComponent-SPM",
            targets: ["SDK-DisclaimerComponent-SPM", "disclaimerComponent"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/facephi-clienters/FPHIDisclaimerWidget-SPM.git", .exactItem("0.1.7")),
        .package(url: "https://github.com/facephi-clienters/SDK-CorePackage-SPM.git", .exactItem("2.9.0")),
    ],
    targets: [
        .target(
            name: "SDK-DisclaimerComponent-SPM",
            dependencies: [
                "disclaimerComponent",
                "SDK-CorePackage-SPM",
                .product(
                    name: "FPHIDisclaimerWidget-SPM",
                    package: "FPHIDisclaimerWidget-SPM"
                ),
            ],
        ),
        .binaryTarget(
            name: "disclaimerComponent",
            url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/SDK/FPHISDKDisclaimerComponent/2.9.0/disclaimerComponent.zip",
            checksum: "93c8b3887a16c01e582cd62d7da3eba08921039eaee3d47c1f3c4a4ac5f64c2b"
        ),
    ]
)
