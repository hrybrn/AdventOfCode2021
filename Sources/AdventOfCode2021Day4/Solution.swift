import AdventOfCode2021InputData
import AdventOfCode2021Protocols

import Foundation

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
       let bingo = parseBingo(exampleOrChallenge == .example ? Day4.example : Day4.challenge)
    }

    private func parseBingo(_ input: String) -> Bingo? {
        let lines = input.split(separator: "\n")

        guard
            let draws = parseDraws(lines[0]),
            let boards = parseBoards(Array(lines[1...]))
        else {
            return nil
        }

        return Bingo(draws: draws, boards: boards)
    }

    private func parseDraws(_ input: String.SubSequence) -> [Int]? {
        let numberStrings = input.split(separator: ",")

        return numberStrings.map { Int($0) }.unpacked()
    }

    private func parseBoards(_ input: [String.SubSequence]) -> [Board]? {
        let trimmed = input.map(String.init).compactMap(trimRow)

        guard let rows = trimmed.compactMap(parseRow).unpacked() else {
            return nil
        }

        return groupRows(rows: rows)
    }

    private func trimRow(_ input: String) -> String? {
        guard !input.isEmpty else {
            return nil
        }

        return input.replacingOccurrences(of: "  ", with: " ")
    }

    private func parseRow(_ input: String) -> [Int]? {
        return input.split(separator: " ").map { Int($0) }.unpacked()
    }

    private func groupRows(rows: [[Int]]) -> [Board]? {
        guard rows.count % 5 == 0 else {
            return nil
        }

        var result: [Board] = []
        for i in 0..<rows.count where i % 5 == 0 {
            result.append(Array(rows[i...(i + 4)]))
        }

        return result
    }
}
