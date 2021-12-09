import AdventOfCode2021InputData
import AdventOfCode2021Protocols

import Foundation

// 0 - 6
// 1 - 2
// 2 - 5
// 3 - 5
// 4 - 4
// 5 - 5
// 6 - 6
// 7 - 3
// 8 - 7
// 9 - 6

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
        let entries = parseEntries(exampleOrChallenge)
    
        guard let answer = solve(part, entries: entries) else {
            return
        }

        print(answer)
    }

    private func parseEntries(_ exampleOrChallenge: ExampleOrChallenge) -> [Entry] {
        switch exampleOrChallenge {
        case .example:
            return parseEntries(Day8.example)
        case .challenge:
            return parseEntries(Day8.challenge)
        }
    }

    private func parseEntries(_ input: String) -> [Entry] {
        let lines = input.split(separator: "\n")

        return lines.map {
            let sections = $0.split(separator: "|")
            let entryInput = sections[0].trimmingCharacters(in: .whitespaces).split(separator: " ").map(String.init)
            let entryOutput = sections[1].trimmingCharacters(in: .whitespaces).split(separator: " ").map(String.init)

            return Entry(input: entryInput, output: entryOutput)
        }
    }

    private func solve(_ part: Part, entries: [Entry]) -> Int? {
        switch part {
        case .one:
            return solvePart1(entries: entries)
        case .two:
            return solvePart2(entries: entries)
        }
    }

    private func solvePart1(entries: [Entry]) -> Int {
        return entries.map { entry in
            entry.output.filter { $0.count == 2 || $0.count == 4 || $0.count == 3 || $0.count == 7 }.count
        }.reduce(0, +)
    }

    private func solvePart2(entries: [Entry]) -> Int? {
        return entries.map(decode(entry:)).unpacked().map { $0.reduce(0, +) }
    }

    private func decode(entry: Entry) -> Int? {
        // all digits are present in all entries
        let one = entry.input.first { $0.count == 2 }.map(Set.init)
        let four = entry.input.first { $0.count == 4 }.map(Set.init)
        let seven = entry.input.first { $0.count == 3 }.map(Set.init)
        let eight = entry.input.first { $0.count == 7 }.map(Set.init)

        guard 
            let one = one, 
            let four = four, 
            let seven = seven, 
            let eight = eight
        else {
            return nil
        }

        // 0,6,9 - 6
        // 2,3,5 - 5
        let zeroSixNine = entry.input.filter { $0.count == 6 }.map(Set.init)
        let nine = zeroSixNine.first { $0.isSuperset(of: four) }

        guard let nine = nine else {
            return nil
        }

        let bottomLeft = eight.subtracting(nine)
        let twoThreeFive = entry.input.filter { $0.count == 5 }.map(Set.init)

        let two = twoThreeFive.first { $0.isSuperset(of: bottomLeft) }

        guard let two = two else {
            return nil
        }

        let threeFive = twoThreeFive.filter { $0 != two }

        let topRight = one.intersection(two)
        let three = threeFive.first { $0.isSuperset(of: topRight) }

        guard let three = three else {
            return nil
        }

        let five = threeFive.first { $0 != three }

        guard let five = five else {
            return nil
        }

        let zeroSix = zeroSixNine.filter { $0 != nine }
        let zero = zeroSix.first { $0.isSuperset(of: topRight) }

        guard let zero = zero else {
            return nil
        }

        let six = zeroSix.first { $0 != zero }

        guard let six = six else {
            return nil
        }

        let sets = [
            zero: 0,
            one: 1,
            two: 2,
            three: 3,
            four: 4,
            five: 5,
            six: 6,
            seven: 7,
            eight: 8,
            nine: 9
        ]

        return decodeEntry(entry: entry, sets: sets)
    }

    private func decodeEntry(entry: Entry, sets: [Set<Character>: Int]) -> Int? {
        let digits = entry.output.map(Set.init).map { sets[$0]! }

        let digitString = digits.reduce("") { $0 + "\($1)"}

        return Int(digitString)
    }
}