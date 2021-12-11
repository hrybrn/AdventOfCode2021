public struct Coord: Hashable, Equatable {
    public let i: Int
    public let j: Int

    public init(i: Int, j: Int) {
        self.i = i
        self.j = j
    }
}