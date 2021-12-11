// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "AdventOfCode2021",
    products: [
        .executable(
            name: "AdventOfCode2021",
            targets: ["AdventOfCode2021"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-collections.git", 
            .upToNextMajor(from: "1.0.0")
        )
    ],
    targets: [
        .target(name: "AdventOfCode2021InputData", dependencies: []),
        .target(name: "AdventOfCode2021Protocols", dependencies: [.product(name: "Collections", package: "swift-collections")]),
        .executableTarget(
            name: "AdventOfCode2021", 
            dependencies: [
                "AdventOfCode2021Protocols",
                "AdventOfCode2021Day1",
                "AdventOfCode2021Day2",
                "AdventOfCode2021Day3",
                "AdventOfCode2021Day4",
                "AdventOfCode2021Day7",
                "AdventOfCode2021Day8",
                "AdventOfCode2021Day9",
                "AdventOfCode2021Day10",
            ]
        ),
        .target(name: "AdventOfCode2021Day1", dependencies: ["AdventOfCode2021InputData", "AdventOfCode2021Protocols"]),
        .target(name: "AdventOfCode2021Day2", dependencies: ["AdventOfCode2021InputData", "AdventOfCode2021Protocols"]),
        .target(name: "AdventOfCode2021Day3", dependencies: ["AdventOfCode2021InputData", "AdventOfCode2021Protocols", .product(name: "Collections", package: "swift-collections")]),
        .target(name: "AdventOfCode2021Day4", dependencies: ["AdventOfCode2021InputData", "AdventOfCode2021Protocols"]),
        .target(name: "AdventOfCode2021Day7", dependencies: ["AdventOfCode2021InputData", "AdventOfCode2021Protocols"]),
        .target(name: "AdventOfCode2021Day8", dependencies: ["AdventOfCode2021InputData", "AdventOfCode2021Protocols"]),
        .target(name: "AdventOfCode2021Day9", dependencies: ["AdventOfCode2021InputData", "AdventOfCode2021Protocols"]),
        .target(name: "AdventOfCode2021Day10", dependencies: ["AdventOfCode2021InputData", "AdventOfCode2021Protocols", .product(name: "Collections", package: "swift-collections")]),
    ]
)
