import AdventOfCode2021InputData
import AdventOfCode2021Protocols

final public class Solution: AdventOfCode2021Protocols.Solution {

    public init() {}

    public func main(part: Part, exampleOrChallenge: ExampleOrChallenge) {
        guard let graph = parseGraph(exampleOrChallenge) else {
            return
        }
        
        let answer = solve(part, graph: graph)
        print(answer)
    }

    private func parseGraph(_ exampleOrChallenge: ExampleOrChallenge) -> [Edge]? {
        switch exampleOrChallenge {
        case .example:
            return parseGraph(Day12.example3)
        case .challenge:
            return parseGraph(Day12.challenge)
        }
    }

    private func parseGraph(_ input: String) -> [Edge]? {
        let lines = input.split(separator: "\n")

        return lines.map(parseEdge).unpacked()
    }

    private func parseEdge(_ input: String.SubSequence) -> Edge? {
        let sections = input.split(separator: "-")

        guard sections.count == 2 else {
            return nil
        }

        return Edge(from: String(sections[0]), to: String(sections[1]))
    }

    private func solve(_ part: Part, graph: [Edge]) -> Int {
        switch part {
        case .one:
            return solvePart1(graph: graph)
        case .two:
            return solvePart2(graph: graph)
        }
    }

    private func solvePart1(graph: [Edge]) -> Int {
        let edgeMap = buildEdgeMap(graph: graph)

        let routes = routes(startingAt: "start", edgeMap: edgeMap, visited: Set<String>())
        return routes.count
    }

    private func routes(startingAt: String, edgeMap: [String: Set<String>], visited: Set<String>) -> [[String]] {
        guard startingAt != "end" else {
            return [["end"]]
        }

        guard let possibles = edgeMap[startingAt] else {
            return []
        }

        let destinations = possibles.filter { !visited.contains($0) && $0 != "start" }

        return destinations.map { destination in
            var visited = visited
            if destination.allSatisfy(\.isLowercase) {
                visited.insert(destination)
            }

            let nextRoutes = routes(startingAt: destination, edgeMap: edgeMap, visited: visited)
            return nextRoutes.map { [startingAt] + $0 }
        }.flatten()
    }

    private func buildEdgeMap(graph: [Edge]) -> [String: Set<String>] {
        var edgeMap: [String: Set<String>] = [:]

        for edge in graph {
            guard var destinations = edgeMap[edge.from] else {
                edgeMap[edge.from] = Set([edge.to])
                continue
            }

            destinations.insert(edge.to)
            edgeMap[edge.from] = destinations
        }

        for edge in graph {
            guard var destinations = edgeMap[edge.to] else {
                edgeMap[edge.to] = Set([edge.from])
                continue
            }

            destinations.insert(edge.from)
            edgeMap[edge.to] = destinations
        }

        return edgeMap
    }

    private func solvePart2(graph: [Edge]) -> Int {
        let edgeMap = buildEdgeMap(graph: graph)

        let routes = routes(startingAt: "start", edgeMap: edgeMap, visited: Set<String>(), visitedTwice: false)
        return routes.count
    }

    private func routes(startingAt: String, edgeMap: [String: Set<String>], visited: Set<String>, visitedTwice: Bool) -> [[String]] {
        guard startingAt != "end" else {
            return [["end"]]
        }

        guard let possibles = edgeMap[startingAt] else {
            return []
        }

        let destinations = possibles.filter { (!visited.contains($0) || !visitedTwice) && $0 != "start" }

        return destinations.map { destination in
            var visited = visited
            var visitedTwice = visitedTwice
            if destination.allSatisfy(\.isLowercase) {
                let (notAlreadyVisited, _) = visited.insert(destination)

                visitedTwice = visitedTwice || !notAlreadyVisited
            }

            let nextRoutes = routes(startingAt: destination, edgeMap: edgeMap, visited: visited, visitedTwice: visitedTwice)
            return nextRoutes.map { [startingAt] + $0 }
        }.flatten()
    }
}