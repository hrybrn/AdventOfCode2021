import AdventOfCode2021InputData
import AdventOfCode2021Protocols

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
        guard let crabs = parseCrabs(exampleOrChallenge == .example ? Day7.example : Day7.challenge) else {
            return
        }

        let answer = part == .one ? solvePart1(crabs: crabs) : solvePart2(crabs: crabs)
        print(answer)
    }

    private func parseCrabs(_ input: String) -> [Int]? {
        return input.split(separator: ",").map { Int($0) }.all()
    }

    private func solvePart1(crabs: [Int]) -> Int {
        let median = crabs.sorted(by: <)[crabs.count / 2]

        return crabs.map { abs($0 - median) }.reduce(0, +)
    }

    private func solvePart2(crabs: [Int]) -> Int {
        let mean = Float(crabs.reduce(0, +)) / Float(crabs.count)

        let lower = Int(mean.rounded(.towardZero))
        let higher = Int(mean.rounded(.awayFromZero))

        let lowerFuel = crabs.map {
            let n = abs($0 - lower)
            return n * (n + 1) / 2
        }.reduce(0, +)

        let higherFuel = crabs.map {
            let n = abs($0 - higher)
            return n * (n + 1) / 2
        }.reduce(0, +)

        return min(lowerFuel, higherFuel)
    }
}
