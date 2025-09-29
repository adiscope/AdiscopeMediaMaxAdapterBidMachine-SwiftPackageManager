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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterBidMachine.zip",
            checksum: "b32cea74013929aa9599aaf52e57c20660118efb60ca2cf9d3c0b3035c9b9d45"
        ),
        .binaryTarget(
            name: "BidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/BidMachine.xcframework.zip",
            checksum: "f3ce00b421532bf8047eda122cdc6eba21ca7ca6fcaeff1cdd02afe1953ed128"
        ),
        .binaryTarget(
            name: "StackModules",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/StackModules.xcframework.zip",
            checksum: "4315dff8b4c376fd0302c61248e217053aa163f0b5f0bf8309ae6aaa859b6cb2"
        ),
        .binaryTarget(
            name: "StackProductPresentation",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/StackProductPresentation.xcframework.zip",
            checksum: "5eb0aebb302ed857947d0d8809c3daf681fedb21fec2fdcb5f210e3f82a709c7"
        ),
        .binaryTarget(
            name: "StackRendering",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/StackRendering.xcframework.zip",
            checksum: "acab8a992dae0aae30f20fbfb0a3372672a3efce0419fd9e42fc92d26c192ff4"
        ),
        .binaryTarget(
            name: "OMSDK_Appodeal",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/OMSDK_Appodeal.xcframework.zip",
            checksum: "84df6f8ffd5d27ef068482458b4c02000030888f6a87b97bac2adafa48c7e880"
        ),
    ]
)
