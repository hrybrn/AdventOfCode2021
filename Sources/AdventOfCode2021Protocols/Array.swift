public extension Array {

    func unpacked<T>() -> [T]? where Element == Optional<T> {
        var result: [T] = []

        for element in self {
            guard let element = element else {
                return nil
            }

            result.append(element)
        }

        return result
    }

    func transposed<T>() -> Self where Element == [T] {
        guard let firstRow = self.first else {
            return []
        }

        return firstRow.indices.map { index in
            self.map { $0[index] }
        }
    }
}