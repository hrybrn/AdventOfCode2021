import Collections

// https://stackoverflow.com/questions/25329186/safe-bounds-checked-array-lookup-in-swift-through-optional-bindings
public extension Collection {

    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }

    func transposed<T>() -> [[T]] where Element == [T] {
        guard let firstRow = self.first else {
            return []
        }

        return firstRow.indices.map { index in
            self.map { $0[index] }
        }
    }

    func transposed<T>() -> [[T]] where Element == Deque<T> {
        guard let firstRow = self.first else {
            return []
        }

        return firstRow.indices.map { index in
            self.map { $0[index] }
        }
    }
}