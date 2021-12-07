import AdventOfCode2021InputData
import AdventOfCode2021Protocols

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
        guard let report = parseReport(exampleOrChallenge) else {
            return
        }
        
        let answer = solve(part, report: report)

        print(answer)
    }

    private func parseReport(_ exampleOrChallenge: ExampleOrChallenge) -> [Int]? {
        switch exampleOrChallenge {
        case .example:
            return parseReport(Day1.example)
        case .challenge:
            return parseReport(Day1.challenge)
        }
    }

    private func parseReport(_ input: String) -> [Int]? {
        let lines = input.split(separator: "\n")

        return lines.map { Int($0) }.all()
    }

    private func solve(_ part: Part, report: [Int]) -> Int {
        switch part {
        case .one:
            return solvePart1(report: report)
        case .two:
            return solvePart2(report: report)
        }
    }

    private func solvePart1(report: [Int]) -> Int {
        let zipped = zip(report[...(report.count - 2)], report[1...])
        
        return zipped.filter { $0.0 < $0.1 }.count
    }

    private func solvePart2(report: [Int]) -> Int {
        var windowedReport: [Int] = []
        
        for startingIndex in (0..<(report.count - 2)) {
            let left = report[startingIndex]
            let middle = report[startingIndex + 1]
            let right = report[startingIndex + 2]

            windowedReport.append(left + middle + right)
        }

        return solvePart1(report: windowedReport)
    }
}