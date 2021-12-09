import AdventOfCode2021InputData
import AdventOfCode2021Protocols

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
        guard let heights = parseHeights(exampleOrChallenge) else {
            return
        }
        
        let answer = solve(part, heights: heights)

        print(answer)
    }

    private func parseHeights(_ exampleOrChallenge: ExampleOrChallenge) -> [[Int]]? {
        switch exampleOrChallenge {
        case .example:
            return parseHeights(Day9.example)
        case .challenge:
            return parseHeights(Day9.challenge)
        }
    }

    private func parseHeights(_ input: String) -> [[Int]]? {
        let lines = input.split(separator: "\n")

        return lines.map { $0.map { char in Int(String(char)) }.unpacked() }.unpacked()
    }

    private func solve(_ part: Part, heights: [[Int]]) -> Int {
        switch part {
        case .one:
            return solvePart1(heights: heights)
        case .two:
            return solvePart2(heights: heights)
        }
    }

    private func solvePart1(heights: [[Int]]) -> Int {
        var risk = 0

        for i in 0..<heights.count {
            for j in 0..<heights[0].count {
                let adjacents = [heights[safe: i - 1]?[safe: j], heights[safe: i + 1]?[safe: j], heights[safe: i]?[safe: j - 1], heights[safe: i]?[safe: j + 1]]
                let current = heights[i][j]

                if adjacents.allSatisfy({ $0 ?? Int.max > current }) {
                    risk += current + 1
                }
            }
        }

        return risk
    }

    private func solvePart2(heights: [[Int]]) -> Int {
        var basins: [Int] = []

        for i in 0..<heights.count {
            for j in 0..<heights[0].count {
                let adjacents = [heights[safe: i - 1]?[safe: j], heights[safe: i + 1]?[safe: j], heights[safe: i]?[safe: j - 1], heights[safe: i]?[safe: j + 1]]
                let current = heights[i][j]

                guard adjacents.allSatisfy({ $0 ?? Int.max > current }) else {
                    continue
                }

                var discounting: Set<Coord> = []
                basins.append(basin(at: Coord(i: i, j: j), heights: heights, discounting: &discounting))
            }
        }

        basins.sort(by: >)
        // print(basins)

        return (basins[safe: 0] ?? 1) * (basins[safe: 1] ?? 1) * (basins[safe: 2] ?? 1)
    }

    private func basin(at root: Coord, heights: [[Int]], discounting: inout Set<Coord>) -> Int {
        let adjacents = [
            (root.i - 1, root.j),
            (root.i + 1, root.j),
            (root.i, root.j - 1),
            (root.i, root.j + 1)
        ].map { Coord(i: $0.0, j: $0.1) }

        let rootValue = heights[root.i][root.j]

        var basinValue = 1

        for coord in adjacents {
            let value = heights[safe: coord.i]?[safe: coord.j] ?? 9

            guard value < 9, value > rootValue, !discounting.contains(coord) else {
                continue
            }

            discounting.insert(coord)
            basinValue += basin(at: coord, heights: heights, discounting: &discounting)
        }

        return basinValue
    }
}