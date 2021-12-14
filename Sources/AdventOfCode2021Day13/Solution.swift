import AdventOfCode2021InputData
import AdventOfCode2021Protocols

import Collections

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
        guard let origami = parseOrigami(exampleOrChallenge) else {
            return
        }
        
        let answer = solve(part, origami: origami)

        print(answer)
    }

    private func parseOrigami(_ exampleOrChallenge: ExampleOrChallenge) -> Origami? {
        switch exampleOrChallenge {
        case .example:
            return parseOrigami(Day13.example)
        case .challenge:
            return parseOrigami(Day13.challenge)
        }
    }

    private func parseOrigami(_ input: String) -> Origami? {
        let lines = input.split(separator: "\n")

        guard let firstFold = lines.firstIndex(where: { $0.first == "f" }) else {
            return nil
        }

        let coords = parseCoords(Array(lines[..<firstFold]))
        let folds = parseFolds(Array(lines[firstFold...]))

        guard let coords = coords, let folds = folds else {
            return nil
        }

        return Origami(dots: Set(coords), folds: Deque(folds))
    }

    private func parseCoords(_ input: [String.SubSequence]) -> [Coord]? {
        return input.map {
            let sections = $0.split(separator: ",")

            guard sections.count == 2 else {
                return nil
            }

            guard let x = Int(sections[0]), let y = Int(sections[1]) else {
                return nil
            }

            return Coord(i: x, j: y)
        }.unpacked()
    }

    private func parseFolds(_ input: [String.SubSequence]) -> [Fold]? {
        return input.map {
            let sections = $0.split(separator: "=")
            
            guard sections.count == 2 else {
                return nil
            }

            let plane: Fold.Plane = sections[0] == "fold along x" ? .i : .j

            guard let position = Int(sections[1]) else {
                return nil
            }

            return Fold(plane: plane, position: position)
        }.unpacked()
    }

    private func solve(_ part: Part, origami: Origami) -> Int {
        switch part {
        case .one:
            return solvePart1(origami: origami)
        case .two:
            return solvePart2(origami: origami)
        }
    }

    private func solvePart1(origami: Origami) -> Int {
        let oneFold = Origami(dots: origami.dots, folds: Deque([origami.folds[0]]))
        let finalResult = doFolds(origami: oneFold)
        printDots(origami: finalResult)
        return finalResult.dots.count
    }

    private func doFolds(origami: Origami) -> Origami {
        guard origami.folds.count != 0 else {
            return origami
        }

        var dots = origami.dots
        var folds = origami.folds
        guard let currentFold = folds.popFirst() else {
            return origami
        }

        switch currentFold.plane {
        case .j:
            let deletedDots = Set(dots.filter { $0.j > currentFold.position })
            dots.subtract(deletedDots)

            for dot in deletedDots {
                dots.insert(Coord(i: dot.i, j: currentFold.position + currentFold.position - dot.j))
            }
        case .i:
            let deletedDots = Set(dots.filter { $0.i > currentFold.position })
            dots.subtract(deletedDots)

            for dot in deletedDots {
                dots.insert(Coord(i: currentFold.position + currentFold.position - dot.i, j: dot.j))
            }
        }

        dots = dots.filter { dot in dot.i >= 0 && dot.j >= 0 }

        return doFolds(origami: Origami(dots: dots, folds: folds))
    }

    private func printDots(origami: Origami) {
        let maxI = origami.dots.map(\.i).max() ?? 0
        let maxJ = origami.dots.map(\.j).max() ?? 0

        var grid = (0...maxJ).map { _ in String(repeating: " ", count: maxI + 1).map { $0 } }

        for dot in origami.dots {
            grid[dot.j][dot.i] = "#"
        }

        grid.forEach { print(String($0)) }
    }

    private func solvePart2(origami: Origami) -> Int {
        let finalResult = doFolds(origami: origami)
        printDots(origami: finalResult)
        return finalResult.dots.count
    }
}