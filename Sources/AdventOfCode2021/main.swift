import AdventOfCode2021Protocols
import AdventOfCode2021Day1
import AdventOfCode2021Day2
import AdventOfCode2021Day3
import AdventOfCode2021Day4
import AdventOfCode2021Day7
import AdventOfCode2021Day8
import AdventOfCode2021Day9
import AdventOfCode2021Day10
import AdventOfCode2021Day11

let days = Int(CommandLine.arguments[CommandLine.arguments.firstIndex(of: "-day")! + 1])!
let part: Part = Int(CommandLine.arguments[CommandLine.arguments.firstIndex(of: "-part")! + 1])! == 1 ? .one : .two
let exampleOrChallenge: ExampleOrChallenge = CommandLine.arguments.contains("-example") ? .example : .challenge

switch days {
    case 1:
        execute(solution: AdventOfCode2021Day1.Solution())
    case 2:
        execute(solution: AdventOfCode2021Day2.Solution())
    case 3:
        execute(solution: AdventOfCode2021Day3.Solution())
    case 4:
        execute(solution: AdventOfCode2021Day4.Solution())
    case 7:
        execute(solution: AdventOfCode2021Day7.Solution())
    case 8:
        execute(solution: AdventOfCode2021Day8.Solution())
    case 9:
        execute(solution: AdventOfCode2021Day9.Solution())
    case 10:
        execute(solution: AdventOfCode2021Day10.Solution())
    case 11:
        execute(solution: AdventOfCode2021Day11.Solution())
    default:
        break
}

func execute(solution: AdventOfCode2021Protocols.Solution) {
    solution.main(part: part, exampleOrChallenge: exampleOrChallenge)
}