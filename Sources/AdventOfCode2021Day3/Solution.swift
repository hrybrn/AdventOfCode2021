import AdventOfCode2021InputData
import AdventOfCode2021Protocols

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
        guard let lines = parse(lines: exampleOrChallenge == .example ? Day3.example : Day3.challenge) else {
            return
        }

        guard let answer = solve(lines: lines) else {
            return
        }

        print(answer)
    }

    private func solve(lines: [[BinaryDigit]]) -> Int? {
        let transposed = lines.transposed()

        let gamma = transposed.map(mostCommon)
        let epsilon = gamma.map(\.not)

        guard let gammaDecimal = convertToDecimal(digits: gamma), let epsilonDecimal = convertToDecimal(digits: epsilon) else {
            return nil
        }

        return gammaDecimal * epsilonDecimal
    }

    private func parse(lines: String) -> [[BinaryDigit]]? {
        return lines.split(separator: "\n").map { line in
            Array(line).map { character in
                BinaryDigit(rawValue: String(character))
            }.unpacked()
        }.unpacked()
    }

    private func mostCommon(column: [BinaryDigit]) -> BinaryDigit {
        var counts: [BinaryDigit: Int] = [:]

        for digit in column {
            counts[digit] = (counts[digit] ?? 0) + 1
        }

        let oneCount = counts[.one] ?? 0
        let zeroCount = counts[.zero] ?? 0

        return oneCount > zeroCount ? .one : .zero
    }

    private func convertToDecimal(digits: [BinaryDigit]) -> Int? {
        let binaryString = digits.map(\.rawValue).joined(separator: "")

        return Int(binaryString, radix: 2)
    }
}
