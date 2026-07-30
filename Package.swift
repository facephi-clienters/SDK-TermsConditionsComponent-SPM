// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "SDK-TermsConditionsComponent-SPM",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "SDK-TermsConditionsComponent-SPM",
            targets: ["SDK-TermsConditionsComponent-SPM", "termsConditionsComponent"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/facephi-clienters/FPHIDisclaimerWidget-SPM.git", .exactItem("0.2.0")),
        .package(url: "https://github.com/facephi-clienters/SDK-CorePackage-SPM.git", .exactItem("2.10.0")),
    ],
    targets: [
        .target(
            name: "SDK-TermsConditionsComponent-SPM",
            dependencies: [
                "termsConditionsComponent",
                "SDK-CorePackage-SPM",
                .product(
                    name: "FPHIDisclaimerWidget-SPM",
                    package: "FPHIDisclaimerWidget-SPM"
                ),
            ],
        ),
        .binaryTarget(
            name: "termsConditionsComponent",
            url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/SDK/FPHISDKTermsConditionsComponent/2.10.0/termsConditionsComponent.zip",
            checksum: "7370877a18539ce587a79279525c7c928d9899d910d97682d4fbe706e691496c"
        ),
    ]
)
