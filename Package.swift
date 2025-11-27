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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.4.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterBidMachineTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterBidMachine"),
                .target(name: "AdiscopeMediaMaxAdapterBidMachineMediationAdapter"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterBidMachine.zip",
            checksum: "c24c94e32d2afc041c47159d1aa4ca682676e6f04b1258b71ed529dcc18d1f3b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachineMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationBidMachineAdapter.xcframework.zip",
            checksum: "b63c24ecdda4e014727683436f8672c457afbe1b72185491f97fb97b130cf2c7"
        ),
        .binaryTarget(
            name: "BidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/BidMachine.xcframework.zip",
            checksum: "d92132b282b54102e4f0ca71a19a92963694b325bd17daf7d13e9f417bf6c47e"
        ),
        .binaryTarget(
            name: "StackModules",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/StackModules.xcframework.zip",
            checksum: "a26293af83801e4551d2527566f74f05fe805a3a757b35bcda76661e2b12bd88"
        ),
        .binaryTarget(
            name: "StackProductPresentation",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/StackProductPresentation.xcframework.zip",
            checksum: "1190e65132d6b379fb2a3a15472f5e75f757fd57e4bd4e2230fce3dd662aaa08"
        ),
        .binaryTarget(
            name: "StackRendering",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/StackRendering.xcframework.zip",
            checksum: "470c1d0ad800fa7a4887278f3a02723d3cd733d0678549192a47d69d6e4cc78f"
        ),
        .binaryTarget(
            name: "OMSDK_Appodeal",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/OMSDK_Appodeal.xcframework.zip",
            checksum: "b560c3b942a515806b067a226db3f7507e6fab0b92e3d23607acdddd94b6419d"
        ),
    ]
)
