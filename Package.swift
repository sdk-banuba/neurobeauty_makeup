// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "neurobeauty_makeup",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "neurobeauty_makeup",
            targets: [
                "neurobeauty_makeup",
                "neurobeauty_makeup_sdk_core",
                "neurobeauty_makeup_effect_player",
                "neurobeauty_makeup_scripting",
                "neurobeauty_makeup_face_tracker"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/effect_player.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/scripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/face_tracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "neurobeauty_makeup",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/neurobeauty_makeup.zip",
            checksum: "126dbaa9f620937c53ca6e38ead2b39454a29b9d14527469c318235fcdd3ddbd"
        ),
        .target(
            name: "neurobeauty_makeup_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "neurobeauty_makeup_effect_player",
            dependencies: [
                .product(
                    name: "effect_player",
                    package: "effect_player"
                ),
            ]
        ),
        .target(
            name: "neurobeauty_makeup_scripting",
            dependencies: [
                .product(
                    name: "scripting",
                    package: "scripting"
                ),
            ]
        ),
        .target(
            name: "neurobeauty_makeup_face_tracker",
            dependencies: [
                .product(
                    name: "face_tracker",
                    package: "face_tracker"
                ),
            ]
        ),
    ]
)
