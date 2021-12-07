import AdventOfCode2021InputData
import AdventOfCode2021Protocols

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
        guard let commands = parse(commands: exampleOrChallenge == .example ? Day2.example : Day2.challenge) else {
            return
        }
        
        let answer = solve(commands: commands)
        print(answer)
    }

    private func parse(commands: String) -> [Command]? {
        let lines = commands.split(separator: "\n")

        return lines.map(parse(command:)).all()
    }

    private func parse(command: String.SubSequence) -> Command? {
        let parts = command.split(separator: " ")

        guard
            let direction = Direction(rawValue: String(parts[0])),
            let magnitude = Int(parts[1])
        else {
            return nil
        }

        return Command(direction: direction, magnitude: magnitude)
    }

    private func solve(commands: [Command]) -> Int {
        var horizontalPosition = 0
        var depth = 0

        for command in commands {
            switch command.direction {
            case .forward:
                horizontalPosition += command.magnitude
            case .up:
                depth -= command.magnitude
            case .down:
                depth += command.magnitude
            }
        }

        return horizontalPosition * depth
    }
}