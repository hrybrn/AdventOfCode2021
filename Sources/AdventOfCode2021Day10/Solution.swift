import AdventOfCode2021InputData
import AdventOfCode2021Protocols

import Collections

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
        guard let bracketLines = parseBrackets(exampleOrChallenge) else {
            return
        }
        
        let answer = solve(part, bracketLines: bracketLines)

        print(answer)
    }

    private func parseBrackets(_ exampleOrChallenge: ExampleOrChallenge) -> [[Bracket]]? {
        switch exampleOrChallenge {
        case .example:
            return parseBrackets(Day10.example)
        case .challenge:
            return parseBrackets(Day10.challenge)
        }
    }

    private func parseBrackets(_ input: String) -> [[Bracket]]? {
        let lines = input.split(separator: "\n")

        return lines.map { $0.map { char in
            switch char {
            case "(":
                return Bracket(type: .smooth, openOrClosed: .open)
            case ")":
                return Bracket(type: .smooth, openOrClosed: .closed)
            case "[":
                return Bracket(type: .square, openOrClosed: .open)
            case "]":
                return Bracket(type: .square, openOrClosed: .closed)
            case "{":
                return Bracket(type: .curly, openOrClosed: .open)
            case "}":
                return Bracket(type: .curly, openOrClosed: .closed)
            case "<":
                return Bracket(type: .angled, openOrClosed: .open)
            case ">":
                return Bracket(type: .angled, openOrClosed: .closed)
            default:
                return nil
            }
        }.unpacked() }.unpacked()
    }

    private func solve(_ part: Part, bracketLines: [[Bracket]]) -> Int {
        switch part {
        case .one:
            return solvePart1(bracketLines: bracketLines)
        case .two:
            return solvePart2(bracketLines: bracketLines)
        }
    }

    private func solvePart1(bracketLines: [[Bracket]]) -> Int {
        return bracketLines.map { brackets in
            var bracketStack: Deque<Bracket> = []

            for bracket in brackets {
                switch bracket.openOrClosed {
                case .open:
                    bracketStack.append(bracket)
                case .closed:
                    let bracketToClose = bracketStack.popLast()

                    if bracketToClose?.type ?? bracket.type != bracket.type {
                        return bracket.type.corruptedCost
                    }
                }
            }

            return 0
        }.reduce(0, +)
    }

    private func solvePart2(bracketLines: [[Bracket]]) -> Int {
        let scores = bracketLines.compactMap(score(bracketLine:))

        let median = scores.sorted(by: <)[scores.count / 2]
        return median
    }

    private func score(bracketLine: [Bracket]) -> Int? {
        var bracketStack: Deque<Bracket> = []

        for bracket in bracketLine {
            switch bracket.openOrClosed {
            case .open:
                bracketStack.append(bracket)
            case .closed:
                let bracketToClose = bracketStack.popLast()

                if bracketToClose?.type ?? bracket.type != bracket.type {
                    return nil
                }
            }
        }

        var score = 0

        while let bracket = bracketStack.popLast() {
            score *= 5
            score += bracket.type.incompleteCost
        }

        return score
    }
}