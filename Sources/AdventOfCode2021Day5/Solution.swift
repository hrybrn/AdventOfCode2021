import AdventOfCode2021InputData
import AdventOfCode2021Protocols

import Foundation

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
        guard let lines = parseLines(exampleOrChallenge) else {
            return
        }
        
        let answer = solve(part, lines: lines)

        print(answer)
    }

    private func parseLines(_ exampleOrChallenge: ExampleOrChallenge) -> [Line]? {
        switch exampleOrChallenge {
        case .example:
            return parseLines(Day5.example)
        case .challenge:
            return parseLines(Day5.challenge)
        }
    }

    private func parseLines(_ input: String) -> [Line]? {
        let lines = input.split(separator: "\n")

        return lines.map(parseLine).unpacked()
    }

    private func parseLine(_ input: String.SubSequence) -> Line? {
        let sections = String(input).components(separatedBy: " -> ")

        guard sections.count == 2 else {
            return nil
        }

        guard let start = parseCoord(sections[0]), let end = parseCoord(sections[1]) else {
            return nil
        }

        return Line(start: start, end: end)
    }

    private func parseCoord(_ input: String) -> Coord? {
        let sections = input.split(separator: ",")

        guard sections.count == 2 else {
            return nil
        }

        guard let i = Int(sections[0]), let j = Int(sections[1]) else {
            return nil
        }

        return Coord(i: i, j: j)
    }

    private func solve(_ part: Part, lines: [Line]) -> Int {
        switch part {
        case .one:
            return solvePart1(lines: lines)
        case .two:
            return solvePart2(lines: lines)
        }
    }

    private func solvePart1(lines: [Line]) -> Int {
        let consideredLines = lines.filter { line in line.start.i == line.end.i || line.start.j == line.end.j }

        var grid: Set<Coord> = []
        var crossings: Set<Coord> = []

        consideredLines.forEach { add(line: $0, grid: &grid, crossings: &crossings) }

        return crossings.count
    }

    private func add(line: Line, grid: inout Set<Coord>, crossings: inout Set<Coord>) {
        let points = lineToPoints(line: line)
        print(line)
        print(points.map { "\($0.i), \($0.j)" })
        for point in points {
            let (new, _) = grid.insert(point)

            guard !new else {
                continue
            }

            crossings.insert(point)
        }
    }

    private func lineToPoints(line: Line) -> Set<Coord> {
        let iDiff = Double(line.end.i - line.start.i)
        let jDiff = Double(line.end.j - line.start.j)

        let angle = atan2(jDiff, iDiff)
        let diagonal = cos(angle) != 0 && sin(angle) != 0
        let length = sqrt(pow(iDiff, 2) + pow(jDiff, 2))
        let amountOfPoints = diagonal ? Int(length / sqrt(2)) + 1 : Int(max(abs(iDiff), abs(jDiff))) + 1

        var points: Set<Coord> = []
        for spot in 0...amountOfPoints {
            let spot = diagonal ? Double(spot) * sqrt(2) : Double(spot)
            let i = line.start.i + Int(spot * cos(angle))
            let j = line.start.j + Int(spot * sin(angle))

            points.insert(Coord(i: i, j: j))
        }

        print(line.start, line.end)
        print(points.map { "\($0.i),\($0.j)" })

        return points
    }

    // private func lineToPoints(line: Line) -> Set<Coord> {
    //     let iDiff = line.end.i - line.start.i
    //     let jDiff = line.end.j - line.start.j

    //     let mapJStepToPoint: (Int) -> Int = { jStep in
    //         if jDiff.negative {
    //             return line.end.j + jStep
    //         } else {
    //             return line.end.j - jStep
    //         }
    //     }

    //     let mapIStepToPoints: (Int) -> [Coord] = { iStep in
    //         let js = (0...abs(jDiff)).map(mapJStepToPoint)

    //         if iDiff.negative {
    //             let i = line.end.i + iStep
    //             return js.map { j in Coord(i: i, j: j) }
    //         } else {
    //             let i = line.end.i - iStep
    //             return js.map { j in Coord(i: i, j: j) }
    //         }
    //     }

    //     let points = (0...abs(iDiff)).map(mapIStepToPoints).flatten()

    //     return Set(points)
    // }

    private func solvePart2(lines: [Line]) -> Int {
        var grid: Set<Coord> = []
        var crossings: Set<Coord> = []

        lines.forEach { add(line: $0, grid: &grid, crossings: &crossings) }

        return crossings.count
    }
}