// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "sandbox_gh_actionsApp",
    products: [
        .library(
            name: "DangerDeps",
            type: .dynamic,
            targets: ["sandbox_gh_actionsApp"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/danger/swift.git",
            from: "3.13.0"
        ),
        .package(
            url: "https://github.com/f-meloni/danger-swift-xcodesummary",
            from: "1.2.1"
        )
    ],
    targets: [
        // This is just an arbitrary Swift file in our app, that has
        // no dependencies outside of Foundation, the dependencies section
        // ensures that the library for Danger gets build also.
        .target(
            name: "sandbox_gh_actionsApp",
            dependencies: [
                .product(name: "Danger", package: "swift"),
                .product(name: "DangerXCodeSummary", package: "danger-swift-xcodesummary")
            ],
            path: "sandbox-gh-actions",
            sources: ["DangerDummy.swift"]
        )
    ]
)


