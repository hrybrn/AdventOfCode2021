import AdventOfCode2021InputData
import AdventOfCode2021Protocols

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
        guard let commands = parseCommands(exampleOrChallenge) else {
            return
        }
        
        let answer = solve(part, commands: commands)
        print(answer)
    }

    private func parseCommands(_ exampleOrChallenge: ExampleOrChallenge) -> [Command]? {
        switch exampleOrChallenge {
        case .example:
            return parseCommands(Day2.example)
        case .challenge:
            return parseCommands(Day2.challenge)
        }
    }

    private func parseCommands(_ input: String) -> [Command]? {
        let lines = input.split(separator: "\n")

        return lines.map(parseCommand).unpacked()
    }

    private func parseCommand(_ input: String.SubSequence) -> Command? {
        let parts = input.split(separator: " ")

        guard
            let direction = Direction(rawValue: String(parts[0])),
            let magnitude = Int(parts[1])
        else {
            return nil
        }

        return Command(direction: direction, magnitude: magnitude)
    }

    private func solve(_ part: Part, commands: [Command]) -> Int {
        switch part {
        case .one:
            return solvePart1(commands: commands)
        case .two:
            return solvePart2(commands: commands)
        }
    }

    private func solvePart1(commands: [Command]) -> Int {
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

    private func solvePart2(commands: [Command]) -> Int {
        var horizontalPosition = 0
        var depth = 0
        var aim = 0

        for command in commands {
            switch command.direction {
            case .forward:
                horizontalPosition += command.magnitude
                depth += aim * command.magnitude
            case .up:
                aim -= command.magnitude
            case .down:
                aim += command.magnitude
            }
        }

        return horizontalPosition * depth
    }
}