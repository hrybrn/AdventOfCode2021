import AdventOfCode2021InputData
import AdventOfCode2021Protocols

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
        guard let report = parse(report: exampleOrChallenge == .example ? Day1.example : Day1.challenge) else {
            return
        }
        
        let answer = solve(report: report)

        print(answer)
    }

    private func parse(report: String) -> [Int]? {
        let lines = report.split(separator: "\n")

        return lines.map { Int($0) }.all()
    }

    private func solve(report: [Int]) -> Int {
        let zipped = zip(report[...(report.count - 2)], report[1...])
        
        return zipped.filter { $0.0 < $0.1 }.count
    }
}