// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterBidMachine",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterBidMachine",
            targets: ["AdiscopeMediaMaxAdapterBidMachineTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.1.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterBidMachineTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterBidMachine"),
                .target(name: "BidMachine"),
                .target(name: "StackModules"),
                .target(name: "StackProductPresentation"),
                .target(name: "StackRendering"),
                .target(name: "OMSDK_Appodeal"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.3.0/AdiscopeMediaMaxAdapterBidMachine.zip",
            checksum: "a8151a72e44616580a342a21f2f7ed97f771f68e3e417f92e68f45fe832f5891"
        ),
        .binaryTarget(
            name: "BidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/BidMachine.xcframework.zip",
            checksum: "0bed28eec0a194a8e6b99bd5c178b459024a95ad4c83be1bb1b949579c038c0e"
        ),
        .binaryTarget(
            name: "StackModules",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/StackModules.xcframework.zip",
            checksum: "55c3ffcbf330c581afb2290c615441eff9c72d44f5b5ee30ed987f342cc43e77"
        ),
        .binaryTarget(
            name: "StackProductPresentation",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/StackProductPresentation.xcframework.zip",
            checksum: "c14278e0945b200afdf3864cae289a14b65a8e9c301b657caae1d5bb5ef06905"
        ),
        .binaryTarget(
            name: "StackRendering",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/StackRendering.xcframework.zip",
            checksum: "436a5aea2c46ac3fc06e5e901dad6a7df702564d3ceefb4ee8fd0e65947ad5e6"
        ),
        .binaryTarget(
            name: "OMSDK_Appodeal",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/OMSDK_Appodeal.xcframework.zip",
            checksum: "8b03911438e9bee6fb36aa56a29008abc2ac91fd37af4ca0d99f13ade25caccf"
        ),
    ]
)
