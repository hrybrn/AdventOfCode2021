import AdventOfCode2021InputData
import AdventOfCode2021Protocols

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
        guard let octopi = parseOctopi(exampleOrChallenge) else {
            return
        }
        
        let answer = solve(part, octopi: octopi)

        print(answer)
    }

    private func parseOctopi(_ exampleOrChallenge: ExampleOrChallenge) -> [[Int]]? {
        switch exampleOrChallenge {
        case .example:
            return parseOctopi(Day11.example)
        case .challenge:
            return parseOctopi(Day11.challenge)
        }
    }

    private func parseOctopi(_ input: String) -> [[Int]]? {
        let lines = input.split(separator: "\n")

        return lines.map { $0.map { Int(String($0)) }.unpacked() }.unpacked()
    }

    private func solve(_ part: Part, octopi: [[Int]]) -> Int {
        switch part {
        case .one:
            return solvePart1(octopi: octopi)
        case .two:
            return solvePart2(octopi: octopi)
        }
    }

    private func solvePart1(octopi: [[Int]]) -> Int {
        var flashes = 0
        var octopi = octopi

        for _ in 0..<100 {
            increment(octopi: &octopi)
            var flashed: Set<Coord> = []
            calculateFlashes(octopi: &octopi, flashed: &flashed)
            flashes += flashed.count
            clean(octopi: &octopi)
            print("")
        }

        return flashes
    }

    private func increment(octopi: inout [[Int]]) {
        for i in 0..<octopi.count {
            for j in 0..<octopi[0].count {
                octopi[i][j] += 1
            }
        }
    }

    private func calculateFlashes(octopi: inout [[Int]], flashed: inout Set<Coord>) {
        var newFlash = false
        var flashing: Set<Coord> = []
        for i in 0..<octopi.count {
            for j in 0..<octopi[0].count {
                if octopi[i][j] > 9 {
                    let coord = Coord(i: i, j: j)
                    let (new, _) = flashed.insert(coord)

                    if new {
                        newFlash = true
                        flashing.insert(coord)
                    }
                }
            }
        }

        guard newFlash else {
            return
        }

        for coord in flashing {
            let (i, j) = (coord.i, coord.j)
            let adjacents = [
                (i - 1, j),
                (i + 1, j),
                (i, j - 1),
                (i, j + 1),
                (i - 1, j - 1),
                (i + 1, j + 1),
                (i + 1, j - 1),
                (i - 1, j + 1)
            ].filter {
                (0..<octopi.count).contains($0.0) && (0..<octopi[0].count).contains($0.1)
            }

            octopi[i][j] += 1
            for (adjI, adjJ) in adjacents {
                octopi[adjI][adjJ] += 1
            }
        }

        calculateFlashes(octopi: &octopi, flashed: &flashed)
    }

    private func clean(octopi: inout [[Int]]) {
        for i in 0..<octopi.count {
            for j in 0..<octopi[0].count {
                if octopi[i][j] > 9 {
                    octopi[i][j] = 0
                }
            }
        }
    }

    private func solvePart2(octopi: [[Int]]) -> Int {
        var octopi = octopi
        var round = 0

        while true {
            round += 1
            increment(octopi: &octopi)
            var flashed: Set<Coord> = []
            calculateFlashes(octopi: &octopi, flashed: &flashed)
            clean(octopi: &octopi)
            
            if flashed.count == octopi.map { $0.count }.reduce(0, +) {
                return round
            }
        }
    }
}