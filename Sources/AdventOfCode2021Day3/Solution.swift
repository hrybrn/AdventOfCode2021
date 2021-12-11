import AdventOfCode2021InputData
import AdventOfCode2021Protocols

import Collections

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
        guard let digitLines = parse(exampleOrChallenge) else {
            return
        }

        guard let answer = solve(part, digitLines: digitLines) else {
            return
        }

        print(answer)
    }

    private func parse(_ exampleOrChallenge: ExampleOrChallenge) -> [[BinaryDigit]]? {
        switch exampleOrChallenge {
        case .example:
            return parse(Day3.example)
        case .challenge:
            return parse(Day3.challenge)
        }
    }

    private func parse(_ input: String) -> [[BinaryDigit]]? {
        return input.split(separator: "\n").map { line in
            Array(line).map { character in
                BinaryDigit(rawValue: String(character))
            }.unpacked()
        }.unpacked()
    }

    private func solve(_ part: Part, digitLines: [[BinaryDigit]]) -> Int? {
        switch part {
        case .one:
            return solvePart1(digitLines: digitLines)
        case .two:
            return solvePart2(digitLines: digitLines)
        }
    }

    private func solvePart1(digitLines: [[BinaryDigit]]) -> Int? {
        let transposed = digitLines.transposed()

        let gamma = transposed.compactMap(mostCommon)
        let epsilon = gamma.map(\.not)

        guard let gammaDecimal = convertToDecimal(digits: gamma), let epsilonDecimal = convertToDecimal(digits: epsilon) else {
            return nil
        }

        return gammaDecimal * epsilonDecimal
    }

    private func mostCommon(column: [BinaryDigit]) -> BinaryDigit? {
        var counts: [BinaryDigit: Int] = [:]

        for digit in column {
            counts[digit] = (counts[digit] ?? 0) + 1
        }

        let oneCount = counts[.one] ?? 0
        let zeroCount = counts[.zero] ?? 0

        if oneCount == zeroCount {
            return nil
        }

        return oneCount > zeroCount ? .one : .zero
    }

    private func convertToDecimal(digits: [BinaryDigit]) -> Int? {
        let binaryString = digits.map(\.rawValue).joined(separator: "")

        return Int(binaryString, radix: 2)
    }

    private func solvePart2(digitLines: [[BinaryDigit]]) -> Int? {
        let digitDeques = digitLines.map { Deque($0) }

        let oxygenRating = oxygenRating(digitDeques: digitDeques) ?? 0
        let co2Rating = co2Rating(digitDeques: digitDeques) ?? 0
        
        print(oxygenRating)
        print(co2Rating)
        return oxygenRating * co2Rating
    }

    private func oxygenRating(digitDeques: [Deque<BinaryDigit>]) -> Int? {
        return convertToDecimal(digits: oxygenRatingDigits(digitDeques: digitDeques))
    }

    private func oxygenRatingDigits(digitDeques: [Deque<BinaryDigit>]) -> [BinaryDigit] {
        guard !digitDeques[0].isEmpty else {
            return []
        }

        let firstColumn = digitDeques.map { $0[0] }
        let mostCommon = mostCommon(column: firstColumn) ?? .one
        let filteredLines = digitDeques.filter { $0[0] == mostCommon }

        var skimmed: [Deque<BinaryDigit>] = []
        for line in filteredLines {
            var line = line
            _ = line.popFirst()
            skimmed.append(line)
        }

        return [mostCommon] + oxygenRatingDigits(digitDeques: skimmed)
    }

    private func co2Rating(digitDeques: [Deque<BinaryDigit>]) -> Int? {
        return convertToDecimal(digits: co2RatingDigits(digitDeques: digitDeques))
    }

    private func co2RatingDigits(digitDeques: [Deque<BinaryDigit>]) -> [BinaryDigit] {
        guard !digitDeques[0].isEmpty else {
            return []
        }

        guard digitDeques.count > 1 else {
            return Array(digitDeques[0])
        }

        let transposed = digitDeques.transposed()
        let leastCommon = mostCommon(column: transposed[0])?.not ?? .zero
        let filteredLines = digitDeques.filter { $0[0] == leastCommon }

        var skimmed: [Deque<BinaryDigit>] = []
        for line in filteredLines {
            var line = line
            _ = line.popFirst()
            skimmed.append(line)
        }

        return [leastCommon] + co2RatingDigits(digitDeques: skimmed)
    }
}
