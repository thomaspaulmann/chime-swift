// swift-tools-version: 5.6

import PackageDescription

let package = Package(
	name: "chime-swift",
	platforms: [.macOS(.v11)],
	products: [
		.library(name: "ChimeSwift", targets: ["ChimeSwift"]),
	],
	dependencies: [
		.package(url: "https://github.com/ChimeHQ/ChimeKit", branch: "main"),
	],
	targets: [
		.target(name: "ChimeSwift", dependencies: [.product(name: "ChimeKitWrapper", package: "ChimeKit")]),
		.testTarget(name: "ChimeSwiftTests", dependencies: ["ChimeSwift"]),
	]
)
